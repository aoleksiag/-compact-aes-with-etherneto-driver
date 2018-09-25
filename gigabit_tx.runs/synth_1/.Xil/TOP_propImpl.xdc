set_property SRC_FILE_INFO {cfile:C:/Users/Adrian/Desktop/FPGA_GigabitTx-master/contraints/nexys_video.xdc rfile:../../../contraints/nexys_video.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R4    IOSTANDARD LVCMOS33 } [get_ports { clk100MHz }]; #IO_L13P_T2_MRCC_34 Sch=sysclk
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS25 } [get_ports { leds[0] }]; #IO_L15P_T2_DQS_13 Sch=led[0]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS25 } [get_ports { leds[1] }]; #IO_L15N_T2_DQS_13 Sch=led[1]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS25 } [get_ports { leds[2] }]; #IO_L17P_T2_13 Sch=led[2]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS25 } [get_ports { leds[3] }]; #IO_L17N_T2_13 Sch=led[3]
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E22  IOSTANDARD LVCMOS25 } [get_ports { switches[0] }]; #IO_L22P_T3_16 Sch=sw[0]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F21  IOSTANDARD LVCMOS25 } [get_ports { switches[1] }]; #IO_25_16 Sch=sw[1]
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G21  IOSTANDARD LVCMOS25 } [get_ports { switches[2] }]; #IO_L24P_T3_16 Sch=sw[2]
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G22  IOSTANDARD LVCMOS25 } [get_ports { switches[3] }]; #IO_L24N_T3_16 Sch=sw[3]
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS25 } [get_ports { eth_int_b }]; #IO_L6N_T0_VREF_13 Sch=eth_int_b
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AA16  IOSTANDARD LVCMOS25 } [get_ports { eth_mdc }]; #IO_L1N_T0_13 Sch=eth_mdc
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS25 } [get_ports { eth_mdio }]; #IO_L1P_T0_13 Sch=eth_mdio
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS25 } [get_ports { eth_pme_b }]; #IO_L6P_T0_13 Sch=eth_pme_b
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { eth_rst_b }]; #IO_25_34 Sch=eth_rst_b
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS25 } [get_ports { eth_rxck }]; #IO_L13P_T2_MRCC_13 Sch=eth_rxck
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W10   IOSTANDARD LVCMOS25 } [get_ports { eth_rxctl }]; #IO_L10N_T1_13 Sch=eth_rxctl
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AB16  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[0] }]; #IO_L2P_T0_13 Sch=eth_rxd[0]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AA15  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[1] }]; #IO_L4P_T0_13 Sch=eth_rxd[1]
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AB15  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[2] }]; #IO_L4N_T0_13 Sch=eth_rxd[2]
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AB11  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[3] }]; #IO_L7P_T1_13 Sch=eth_rxd[3]
set_property src_info {type:XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AA14  IOSTANDARD LVCMOS25 } [get_ports { eth_txck }]; #IO_L5N_T0_13 Sch=eth_txck
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS25 } [get_ports { eth_txctl }]; #IO_L10P_T1_13 Sch=eth_txctl
set_property src_info {type:XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y12   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[0] }]; #IO_L11N_T1_SRCC_13 Sch=eth_txd[0]
set_property src_info {type:XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W12   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[1] }]; #IO_L12N_T1_MRCC_13 Sch=eth_txd[1]
set_property src_info {type:XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W11   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[2] }]; #IO_L12P_T1_MRCC_13 Sch=eth_txd[2]
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y11   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[3] }]; #IO_L11P_T1_SRCC_13 Sch=eth_txd[3]
