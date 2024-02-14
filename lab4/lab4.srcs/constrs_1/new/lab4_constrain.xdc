#A
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { A[0] }];

set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { A[1] }];

set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports { A[2] }];

set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports { A[3] }];

#B
set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 } [get_ports { B[0] }];

set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { B[1] }];

set_property -dict { PACKAGE_PIN R13 IOSTANDARD LVCMOS33 } [get_ports { B[2] }];

set_property -dict { PACKAGE_PIN T8 IOSTANDARD LVCMOS33 } [get_ports { B[3] }];

#outputs
set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33 } [get_ports { equal }];
set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { low }];
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { high }];