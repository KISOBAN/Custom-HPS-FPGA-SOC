	component soc_system is
		port (
			clk_clk                                 : in    std_logic                     := 'X';             -- clk
			hps_0_h2f_reset_reset_n                 : out   std_logic;                                        -- reset_n
			hps_io_hps_io_emac1_inst_TX_CLK         : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0           : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1           : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2           : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3           : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0           : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO           : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC            : out   std_logic;                                        -- hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL         : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL         : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK         : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1           : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2           : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3           : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
			hps_io_hps_io_sdio_inst_CMD             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0              : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1              : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK             : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2              : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3              : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0              : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1              : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2              : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3              : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4              : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5              : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6              : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7              : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK             : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP             : out   std_logic;                                        -- hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR             : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT             : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
			memory_mem_a                            : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba                           : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                           : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                         : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                          : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                         : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                        : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                        : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                         : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n                      : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                           : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                          : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                        : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                          : out   std_logic;                                        -- mem_odt
			memory_mem_dm                           : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin                        : in    std_logic                     := 'X';             -- oct_rzqin
			reset_reset_n                           : in    std_logic                     := 'X';             -- reset_n
			led_pio_external_connection_export      : out   std_logic_vector(9 downto 0);                     -- export
			seg7_if_0_conduit_end_export            : out   std_logic_vector(47 downto 0);                    -- export
			switches_pio_external_connection_export : in    std_logic_vector(9 downto 0)  := (others => 'X')  -- export
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			clk_clk                                 => CONNECTED_TO_clk_clk,                                 --                              clk.clk
			hps_0_h2f_reset_reset_n                 => CONNECTED_TO_hps_0_h2f_reset_reset_n,                 --                  hps_0_h2f_reset.reset_n
			hps_io_hps_io_emac1_inst_TX_CLK         => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CLK,         --                           hps_io.hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0           => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD0,           --                                 .hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1           => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD1,           --                                 .hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2           => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD2,           --                                 .hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3           => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD3,           --                                 .hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0           => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD0,           --                                 .hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO           => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDIO,           --                                 .hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC            => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDC,            --                                 .hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL         => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CTL,         --                                 .hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL         => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CTL,         --                                 .hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK         => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CLK,         --                                 .hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1           => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD1,           --                                 .hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2           => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD2,           --                                 .hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3           => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD3,           --                                 .hps_io_emac1_inst_RXD3
			hps_io_hps_io_sdio_inst_CMD             => CONNECTED_TO_hps_io_hps_io_sdio_inst_CMD,             --                                 .hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0              => CONNECTED_TO_hps_io_hps_io_sdio_inst_D0,              --                                 .hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1              => CONNECTED_TO_hps_io_hps_io_sdio_inst_D1,              --                                 .hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK             => CONNECTED_TO_hps_io_hps_io_sdio_inst_CLK,             --                                 .hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2              => CONNECTED_TO_hps_io_hps_io_sdio_inst_D2,              --                                 .hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3              => CONNECTED_TO_hps_io_hps_io_sdio_inst_D3,              --                                 .hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0              => CONNECTED_TO_hps_io_hps_io_usb1_inst_D0,              --                                 .hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1              => CONNECTED_TO_hps_io_hps_io_usb1_inst_D1,              --                                 .hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2              => CONNECTED_TO_hps_io_hps_io_usb1_inst_D2,              --                                 .hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3              => CONNECTED_TO_hps_io_hps_io_usb1_inst_D3,              --                                 .hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4              => CONNECTED_TO_hps_io_hps_io_usb1_inst_D4,              --                                 .hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5              => CONNECTED_TO_hps_io_hps_io_usb1_inst_D5,              --                                 .hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6              => CONNECTED_TO_hps_io_hps_io_usb1_inst_D6,              --                                 .hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7              => CONNECTED_TO_hps_io_hps_io_usb1_inst_D7,              --                                 .hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK             => CONNECTED_TO_hps_io_hps_io_usb1_inst_CLK,             --                                 .hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP             => CONNECTED_TO_hps_io_hps_io_usb1_inst_STP,             --                                 .hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR             => CONNECTED_TO_hps_io_hps_io_usb1_inst_DIR,             --                                 .hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT             => CONNECTED_TO_hps_io_hps_io_usb1_inst_NXT,             --                                 .hps_io_usb1_inst_NXT
			memory_mem_a                            => CONNECTED_TO_memory_mem_a,                            --                           memory.mem_a
			memory_mem_ba                           => CONNECTED_TO_memory_mem_ba,                           --                                 .mem_ba
			memory_mem_ck                           => CONNECTED_TO_memory_mem_ck,                           --                                 .mem_ck
			memory_mem_ck_n                         => CONNECTED_TO_memory_mem_ck_n,                         --                                 .mem_ck_n
			memory_mem_cke                          => CONNECTED_TO_memory_mem_cke,                          --                                 .mem_cke
			memory_mem_cs_n                         => CONNECTED_TO_memory_mem_cs_n,                         --                                 .mem_cs_n
			memory_mem_ras_n                        => CONNECTED_TO_memory_mem_ras_n,                        --                                 .mem_ras_n
			memory_mem_cas_n                        => CONNECTED_TO_memory_mem_cas_n,                        --                                 .mem_cas_n
			memory_mem_we_n                         => CONNECTED_TO_memory_mem_we_n,                         --                                 .mem_we_n
			memory_mem_reset_n                      => CONNECTED_TO_memory_mem_reset_n,                      --                                 .mem_reset_n
			memory_mem_dq                           => CONNECTED_TO_memory_mem_dq,                           --                                 .mem_dq
			memory_mem_dqs                          => CONNECTED_TO_memory_mem_dqs,                          --                                 .mem_dqs
			memory_mem_dqs_n                        => CONNECTED_TO_memory_mem_dqs_n,                        --                                 .mem_dqs_n
			memory_mem_odt                          => CONNECTED_TO_memory_mem_odt,                          --                                 .mem_odt
			memory_mem_dm                           => CONNECTED_TO_memory_mem_dm,                           --                                 .mem_dm
			memory_oct_rzqin                        => CONNECTED_TO_memory_oct_rzqin,                        --                                 .oct_rzqin
			reset_reset_n                           => CONNECTED_TO_reset_reset_n,                           --                            reset.reset_n
			led_pio_external_connection_export      => CONNECTED_TO_led_pio_external_connection_export,      --      led_pio_external_connection.export
			seg7_if_0_conduit_end_export            => CONNECTED_TO_seg7_if_0_conduit_end_export,            --            seg7_if_0_conduit_end.export
			switches_pio_external_connection_export => CONNECTED_TO_switches_pio_external_connection_export  -- switches_pio_external_connection.export
		);

