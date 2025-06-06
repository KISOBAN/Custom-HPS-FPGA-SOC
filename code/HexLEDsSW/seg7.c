/*
 * seg7.c
 *
 *  
 *	Adapted from the HEX_LED_FPGA Altera example
 */

#include <stdio.h>
#include <unistd.h>
#include "seg7.h"
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"


extern volatile unsigned long *h2p_lw_hex_addr;
extern volatile unsigned long *h2p_lw_sw_addr;
#define SEG7_SET(index, seg_mask)   alt_write_word(h2p_lw_hex_addr+index,seg_mask)
#define SEG7_NUM    6

static unsigned char szMap[] = {
        63, 6, 91, 79, 102, 109, 125, 7,
        127, 111, 119, 124, 57, 94, 121, 113
    };  // 0,1,2, ... 9, a, b, c, d, e, f

    
static unsigned char msg[] = {
	127, 79, 127, 121, 63, 57 }; //HELLO (OLLEH)  (838EOC)

void display_msg(){
	SEG7_SET(0, msg[0]);
	SEG7_SET(1, msg[1]); 
	SEG7_SET(2, msg[2]); 
	SEG7_SET(3, msg[3]); 
	SEG7_SET(4, msg[4]); 
	SEG7_SET(5, msg[5]);
}

void SEG7_Clear(void){
    int i;
    for(i=0;i<SEG7_NUM;i++){
        SEG7_SET(i, 0x00);
    }
}
void SEG7_Full(void){
    int i;
    for(i=0;i<SEG7_NUM;i++){
        SEG7_SET(i, 0xFF);
    }
}

void SEG7_Number(void){
    int i;
    for(i=0;i<SEG7_NUM;i++){
        SEG7_SET(i, szMap[i]);
    }
}


void SEG7_All_Number(void){
    int i,j;
    for(j=0;j<16;j++)
    {
	printf("hex show %X\r\n",j);
       for(i=0;i<SEG7_NUM;i++){
        SEG7_SET(i, szMap[j]);
       }
       usleep(500*1000);
    }
}

void SEG7_Hex( unsigned long  Data,unsigned char  point_mask){
    unsigned char mask = 0x01;
    unsigned char seg_mask;
    int i;

//
    seg_mask = 0;
    for(i=0;i<SEG7_NUM;i++){
        seg_mask = szMap[Data & 0x0F];
        Data >>= 4;
        if (point_mask & mask)
            seg_mask |= 0x80;
        mask <<= 1;
        SEG7_SET(i, seg_mask);
    }
}

void SEG7_Decimal( unsigned long  Data, unsigned char point_mask){
    unsigned char mask = 0x01;
    unsigned char seg_mask;
    int i;

    //
    seg_mask = 0;
    for(i=0;i<SEG7_NUM;i++){
        seg_mask = szMap[Data%10];
        Data /= 10;
        if (point_mask & mask)
            seg_mask |= 0x80;
        mask <<= 1;
        SEG7_SET(i, seg_mask);
    }
}
