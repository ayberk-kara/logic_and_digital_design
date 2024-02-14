set_property -dict { PACKAGE_PIN R15   IO]STANDARD LVCMOS33 } [get_ports { x3 }]; #IO_L13N_T2_MRCC_14 Sch=sw[x3]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { x2 }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[x2]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { x1 }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[x1]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { x0 }]; #IO_L24N_T3_RS0_15 Sch=sw[x0]


set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { y3 }]; #IO_L24N_T3_34 Sch=sw[y3]
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { y2 }]; #IO_L5N_T0_D07_14 Sch=sw[y2]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { y1 }]; #IO_L17N_T2_A13_D29_14 Sch=sw[y1]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { y0 }]; #IO_L7N_T1_D10_14 Sch=sw[y0]



set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { AA }]; #IO_L18P_T2_A24_15 Sch=led[AA] //a>b
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { BB }]; #IO_L24P_T3_RS1_15 Sch=led[BB] // b<a
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { AB }]; #IO_L17N_T2_A25_15 Sch=led[AB] // a=b
