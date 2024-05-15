// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 14 16:11:32 2022
// Host        : LAPTOP-0I44SIOD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_32_0_sim_netlist.v
// Design      : adder_32_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
   (a,
    b,
    cin,
    m,
    cout,
    s,
    o);
  input [3:0]a;
  input [3:0]b;
  input cin;
  input m;
  output cout;
  output [3:0]s;
  output o;

  wire [3:0]a;
  wire [3:0]b;
  wire cin;
  wire cout;
  wire \inst/c_2 ;
  wire \inst/fa3/cout2__0 ;
  wire [3:2]\inst/temp__2 ;
  wire m;
  wire o;
  wire [3:0]s;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    cout_INST_0
       (.I0(\inst/c_2 ),
        .I1(\inst/temp__2 [2]),
        .I2(a[2]),
        .I3(\inst/temp__2 [3]),
        .I4(a[3]),
        .O(cout));
  LUT6 #(
    .INIT(64'hFBECFFE820C8E800)) 
    cout_INST_0_i_1
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(m),
        .I5(a[1]),
        .O(\inst/c_2 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    cout_INST_0_i_2
       (.I0(b[0]),
        .I1(b[1]),
        .I2(m),
        .I3(b[2]),
        .O(\inst/temp__2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    cout_INST_0_i_3
       (.I0(b[2]),
        .I1(b[1]),
        .I2(b[0]),
        .I3(m),
        .I4(b[3]),
        .O(\inst/temp__2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h11181888)) 
    o_INST_0
       (.I0(a[3]),
        .I1(\inst/temp__2 [3]),
        .I2(a[2]),
        .I3(\inst/temp__2 [2]),
        .I4(\inst/c_2 ),
        .O(o));
  LUT3 #(
    .INIT(8'h96)) 
    \s[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(cin),
        .O(s[0]));
  LUT6 #(
    .INIT(64'h6969A55A69965A5A)) 
    \s[1]_INST_0 
       (.I0(a[1]),
        .I1(m),
        .I2(b[1]),
        .I3(a[0]),
        .I4(b[0]),
        .I5(cin),
        .O(s[1]));
  LUT6 #(
    .INIT(64'h56AAA955A95556AA)) 
    \s[2]_INST_0 
       (.I0(a[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(m),
        .I4(b[2]),
        .I5(\inst/c_2 ),
        .O(s[2]));
  LUT4 #(
    .INIT(16'h566A)) 
    \s[3]_INST_0 
       (.I0(\inst/fa3/cout2__0 ),
        .I1(a[2]),
        .I2(\inst/temp__2 [2]),
        .I3(\inst/c_2 ),
        .O(s[3]));
  LUT6 #(
    .INIT(64'h999999956666666A)) 
    \s[3]_INST_0_i_1 
       (.I0(b[3]),
        .I1(m),
        .I2(b[0]),
        .I3(b[1]),
        .I4(b[2]),
        .I5(a[3]),
        .O(\inst/fa3/cout2__0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_0" *) (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1
   (a,
    b,
    cin,
    m,
    cout,
    s,
    o);
  input [3:0]a;
  input [3:0]b;
  input cin;
  input m;
  output cout;
  output [3:0]s;
  output o;

  wire [3:0]a;
  wire [3:0]b;
  wire cin;
  wire cout;
  wire \inst/c_2 ;
  wire \inst/fa3/cout2__0 ;
  wire [3:2]\inst/temp__2 ;
  wire m;
  wire o;
  wire [3:0]s;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    cout_INST_0
       (.I0(\inst/c_2 ),
        .I1(\inst/temp__2 [2]),
        .I2(a[2]),
        .I3(\inst/temp__2 [3]),
        .I4(a[3]),
        .O(cout));
  LUT6 #(
    .INIT(64'hFBECFFE820C8E800)) 
    cout_INST_0_i_1
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(m),
        .I5(a[1]),
        .O(\inst/c_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    cout_INST_0_i_2
       (.I0(b[0]),
        .I1(b[1]),
        .I2(m),
        .I3(b[2]),
        .O(\inst/temp__2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    cout_INST_0_i_3
       (.I0(b[2]),
        .I1(b[1]),
        .I2(b[0]),
        .I3(m),
        .I4(b[3]),
        .O(\inst/temp__2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h11181888)) 
    o_INST_0
       (.I0(a[3]),
        .I1(\inst/temp__2 [3]),
        .I2(a[2]),
        .I3(\inst/temp__2 [2]),
        .I4(\inst/c_2 ),
        .O(o));
  LUT3 #(
    .INIT(8'h96)) 
    \s[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(cin),
        .O(s[0]));
  LUT6 #(
    .INIT(64'h6969A55A69965A5A)) 
    \s[1]_INST_0 
       (.I0(a[1]),
        .I1(m),
        .I2(b[1]),
        .I3(a[0]),
        .I4(b[0]),
        .I5(cin),
        .O(s[1]));
  LUT6 #(
    .INIT(64'h56AAA955A95556AA)) 
    \s[2]_INST_0 
       (.I0(a[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(m),
        .I4(b[2]),
        .I5(\inst/c_2 ),
        .O(s[2]));
  LUT4 #(
    .INIT(16'h566A)) 
    \s[3]_INST_0 
       (.I0(\inst/fa3/cout2__0 ),
        .I1(a[2]),
        .I2(\inst/temp__2 [2]),
        .I3(\inst/c_2 ),
        .O(s[3]));
  LUT6 #(
    .INIT(64'h999999956666666A)) 
    \s[3]_INST_0_i_1 
       (.I0(b[3]),
        .I1(m),
        .I2(b[0]),
        .I3(b[1]),
        .I4(b[2]),
        .I5(a[3]),
        .O(\inst/fa3/cout2__0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_0" *) (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2
   (a,
    b,
    cin,
    m,
    cout,
    s,
    o);
  input [3:0]a;
  input [3:0]b;
  input cin;
  input m;
  output cout;
  output [3:0]s;
  output o;

  wire [3:0]a;
  wire [3:0]b;
  wire cin;
  wire cout;
  wire \inst/c_2 ;
  wire \inst/fa3/cout2__0 ;
  wire [3:2]\inst/temp__2 ;
  wire m;
  wire o;
  wire [3:0]s;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    cout_INST_0
       (.I0(\inst/c_2 ),
        .I1(\inst/temp__2 [2]),
        .I2(a[2]),
        .I3(\inst/temp__2 [3]),
        .I4(a[3]),
        .O(cout));
  LUT6 #(
    .INIT(64'hFBECFFE820C8E800)) 
    cout_INST_0_i_1
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(m),
        .I5(a[1]),
        .O(\inst/c_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    cout_INST_0_i_2
       (.I0(b[0]),
        .I1(b[1]),
        .I2(m),
        .I3(b[2]),
        .O(\inst/temp__2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    cout_INST_0_i_3
       (.I0(b[2]),
        .I1(b[1]),
        .I2(b[0]),
        .I3(m),
        .I4(b[3]),
        .O(\inst/temp__2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h11181888)) 
    o_INST_0
       (.I0(a[3]),
        .I1(\inst/temp__2 [3]),
        .I2(a[2]),
        .I3(\inst/temp__2 [2]),
        .I4(\inst/c_2 ),
        .O(o));
  LUT3 #(
    .INIT(8'h96)) 
    \s[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(cin),
        .O(s[0]));
  LUT6 #(
    .INIT(64'h6969A55A69965A5A)) 
    \s[1]_INST_0 
       (.I0(a[1]),
        .I1(m),
        .I2(b[1]),
        .I3(a[0]),
        .I4(b[0]),
        .I5(cin),
        .O(s[1]));
  LUT6 #(
    .INIT(64'h56AAA955A95556AA)) 
    \s[2]_INST_0 
       (.I0(a[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(m),
        .I4(b[2]),
        .I5(\inst/c_2 ),
        .O(s[2]));
  LUT4 #(
    .INIT(16'h566A)) 
    \s[3]_INST_0 
       (.I0(\inst/fa3/cout2__0 ),
        .I1(a[2]),
        .I2(\inst/temp__2 [2]),
        .I3(\inst/c_2 ),
        .O(s[3]));
  LUT6 #(
    .INIT(64'h999999956666666A)) 
    \s[3]_INST_0_i_1 
       (.I0(b[3]),
        .I1(m),
        .I2(b[0]),
        .I3(b[1]),
        .I4(b[2]),
        .I5(a[3]),
        .O(\inst/fa3/cout2__0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_0" *) (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3
   (a,
    b,
    cin,
    m,
    cout,
    s,
    o);
  input [3:0]a;
  input [3:0]b;
  input cin;
  input m;
  output cout;
  output [3:0]s;
  output o;

  wire [3:0]a;
  wire [3:0]b;
  wire cin;
  wire cout;
  wire \inst/c_2 ;
  wire \inst/fa3/cout2__0 ;
  wire [3:2]\inst/temp__2 ;
  wire m;
  wire o;
  wire [3:0]s;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    cout_INST_0
       (.I0(\inst/c_2 ),
        .I1(\inst/temp__2 [2]),
        .I2(a[2]),
        .I3(\inst/temp__2 [3]),
        .I4(a[3]),
        .O(cout));
  LUT6 #(
    .INIT(64'hFBECFFE820C8E800)) 
    cout_INST_0_i_1
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(m),
        .I5(a[1]),
        .O(\inst/c_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    cout_INST_0_i_2
       (.I0(b[0]),
        .I1(b[1]),
        .I2(m),
        .I3(b[2]),
        .O(\inst/temp__2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    cout_INST_0_i_3
       (.I0(b[2]),
        .I1(b[1]),
        .I2(b[0]),
        .I3(m),
        .I4(b[3]),
        .O(\inst/temp__2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h11181888)) 
    o_INST_0
       (.I0(a[3]),
        .I1(\inst/temp__2 [3]),
        .I2(a[2]),
        .I3(\inst/temp__2 [2]),
        .I4(\inst/c_2 ),
        .O(o));
  LUT3 #(
    .INIT(8'h96)) 
    \s[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(cin),
        .O(s[0]));
  LUT6 #(
    .INIT(64'h6969A55A69965A5A)) 
    \s[1]_INST_0 
       (.I0(a[1]),
        .I1(m),
        .I2(b[1]),
        .I3(a[0]),
        .I4(b[0]),
        .I5(cin),
        .O(s[1]));
  LUT6 #(
    .INIT(64'h56AAA955A95556AA)) 
    \s[2]_INST_0 
       (.I0(a[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(m),
        .I4(b[2]),
        .I5(\inst/c_2 ),
        .O(s[2]));
  LUT4 #(
    .INIT(16'h566A)) 
    \s[3]_INST_0 
       (.I0(\inst/fa3/cout2__0 ),
        .I1(a[2]),
        .I2(\inst/temp__2 [2]),
        .I3(\inst/c_2 ),
        .O(s[3]));
  LUT6 #(
    .INIT(64'h999999956666666A)) 
    \s[3]_INST_0_i_1 
       (.I0(b[3]),
        .I1(m),
        .I2(b[0]),
        .I3(b[1]),
        .I4(b[2]),
        .I5(a[3]),
        .O(\inst/fa3/cout2__0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_0" *) (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4
   (a,
    b,
    cin,
    m,
    cout,
    s,
    o);
  input [3:0]a;
  input [3:0]b;
  input cin;
  input m;
  output cout;
  output [3:0]s;
  output o;

  wire [3:0]a;
  wire [3:0]b;
  wire cin;
  wire cout;
  wire \inst/c_2 ;
  wire \inst/fa3/cout2__0 ;
  wire [3:2]\inst/temp__2 ;
  wire m;
  wire o;
  wire [3:0]s;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    cout_INST_0
       (.I0(\inst/c_2 ),
        .I1(\inst/temp__2 [2]),
        .I2(a[2]),
        .I3(\inst/temp__2 [3]),
        .I4(a[3]),
        .O(cout));
  LUT6 #(
    .INIT(64'hFBECFFE820C8E800)) 
    cout_INST_0_i_1
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(m),
        .I5(a[1]),
        .O(\inst/c_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    cout_INST_0_i_2
       (.I0(b[0]),
        .I1(b[1]),
        .I2(m),
        .I3(b[2]),
        .O(\inst/temp__2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    cout_INST_0_i_3
       (.I0(b[2]),
        .I1(b[1]),
        .I2(b[0]),
        .I3(m),
        .I4(b[3]),
        .O(\inst/temp__2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h11181888)) 
    o_INST_0
       (.I0(a[3]),
        .I1(\inst/temp__2 [3]),
        .I2(a[2]),
        .I3(\inst/temp__2 [2]),
        .I4(\inst/c_2 ),
        .O(o));
  LUT3 #(
    .INIT(8'h96)) 
    \s[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(cin),
        .O(s[0]));
  LUT6 #(
    .INIT(64'h6969A55A69965A5A)) 
    \s[1]_INST_0 
       (.I0(a[1]),
        .I1(m),
        .I2(b[1]),
        .I3(a[0]),
        .I4(b[0]),
        .I5(cin),
        .O(s[1]));
  LUT6 #(
    .INIT(64'h56AAA955A95556AA)) 
    \s[2]_INST_0 
       (.I0(a[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(m),
        .I4(b[2]),
        .I5(\inst/c_2 ),
        .O(s[2]));
  LUT4 #(
    .INIT(16'h566A)) 
    \s[3]_INST_0 
       (.I0(\inst/fa3/cout2__0 ),
        .I1(a[2]),
        .I2(\inst/temp__2 [2]),
        .I3(\inst/c_2 ),
        .O(s[3]));
  LUT6 #(
    .INIT(64'h999999956666666A)) 
    \s[3]_INST_0_i_1 
       (.I0(b[3]),
        .I1(m),
        .I2(b[0]),
        .I3(b[1]),
        .I4(b[2]),
        .I5(a[3]),
        .O(\inst/fa3/cout2__0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_0" *) (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5
   (a,
    b,
    cin,
    m,
    cout,
    s,
    o);
  input [3:0]a;
  input [3:0]b;
  input cin;
  input m;
  output cout;
  output [3:0]s;
  output o;

  wire [3:0]a;
  wire [3:0]b;
  wire cin;
  wire cout;
  wire \inst/c_2 ;
  wire \inst/fa3/cout2__0 ;
  wire [3:2]\inst/temp__2 ;
  wire m;
  wire o;
  wire [3:0]s;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    cout_INST_0
       (.I0(\inst/c_2 ),
        .I1(\inst/temp__2 [2]),
        .I2(a[2]),
        .I3(\inst/temp__2 [3]),
        .I4(a[3]),
        .O(cout));
  LUT6 #(
    .INIT(64'hFBECFFE820C8E800)) 
    cout_INST_0_i_1
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(m),
        .I5(a[1]),
        .O(\inst/c_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    cout_INST_0_i_2
       (.I0(b[0]),
        .I1(b[1]),
        .I2(m),
        .I3(b[2]),
        .O(\inst/temp__2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    cout_INST_0_i_3
       (.I0(b[2]),
        .I1(b[1]),
        .I2(b[0]),
        .I3(m),
        .I4(b[3]),
        .O(\inst/temp__2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h11181888)) 
    o_INST_0
       (.I0(a[3]),
        .I1(\inst/temp__2 [3]),
        .I2(a[2]),
        .I3(\inst/temp__2 [2]),
        .I4(\inst/c_2 ),
        .O(o));
  LUT3 #(
    .INIT(8'h96)) 
    \s[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(cin),
        .O(s[0]));
  LUT6 #(
    .INIT(64'h6969A55A69965A5A)) 
    \s[1]_INST_0 
       (.I0(a[1]),
        .I1(m),
        .I2(b[1]),
        .I3(a[0]),
        .I4(b[0]),
        .I5(cin),
        .O(s[1]));
  LUT6 #(
    .INIT(64'h56AAA955A95556AA)) 
    \s[2]_INST_0 
       (.I0(a[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(m),
        .I4(b[2]),
        .I5(\inst/c_2 ),
        .O(s[2]));
  LUT4 #(
    .INIT(16'h566A)) 
    \s[3]_INST_0 
       (.I0(\inst/fa3/cout2__0 ),
        .I1(a[2]),
        .I2(\inst/temp__2 [2]),
        .I3(\inst/c_2 ),
        .O(s[3]));
  LUT6 #(
    .INIT(64'h999999956666666A)) 
    \s[3]_INST_0_i_1 
       (.I0(b[3]),
        .I1(m),
        .I2(b[0]),
        .I3(b[1]),
        .I4(b[2]),
        .I5(a[3]),
        .O(\inst/fa3/cout2__0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_0" *) (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6
   (a,
    b,
    cin,
    m,
    cout,
    s,
    o);
  input [3:0]a;
  input [3:0]b;
  input cin;
  input m;
  output cout;
  output [3:0]s;
  output o;

  wire [3:0]a;
  wire [3:0]b;
  wire cin;
  wire cout;
  wire \inst/c_2 ;
  wire \inst/fa3/cout2__0 ;
  wire [3:2]\inst/temp__2 ;
  wire m;
  wire o;
  wire [3:0]s;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    cout_INST_0
       (.I0(\inst/c_2 ),
        .I1(\inst/temp__2 [2]),
        .I2(a[2]),
        .I3(\inst/temp__2 [3]),
        .I4(a[3]),
        .O(cout));
  LUT6 #(
    .INIT(64'hFBECFFE820C8E800)) 
    cout_INST_0_i_1
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(m),
        .I5(a[1]),
        .O(\inst/c_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    cout_INST_0_i_2
       (.I0(b[0]),
        .I1(b[1]),
        .I2(m),
        .I3(b[2]),
        .O(\inst/temp__2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    cout_INST_0_i_3
       (.I0(b[2]),
        .I1(b[1]),
        .I2(b[0]),
        .I3(m),
        .I4(b[3]),
        .O(\inst/temp__2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h11181888)) 
    o_INST_0
       (.I0(a[3]),
        .I1(\inst/temp__2 [3]),
        .I2(a[2]),
        .I3(\inst/temp__2 [2]),
        .I4(\inst/c_2 ),
        .O(o));
  LUT3 #(
    .INIT(8'h96)) 
    \s[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(cin),
        .O(s[0]));
  LUT6 #(
    .INIT(64'h6969A55A69965A5A)) 
    \s[1]_INST_0 
       (.I0(a[1]),
        .I1(m),
        .I2(b[1]),
        .I3(a[0]),
        .I4(b[0]),
        .I5(cin),
        .O(s[1]));
  LUT6 #(
    .INIT(64'h56AAA955A95556AA)) 
    \s[2]_INST_0 
       (.I0(a[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(m),
        .I4(b[2]),
        .I5(\inst/c_2 ),
        .O(s[2]));
  LUT4 #(
    .INIT(16'h566A)) 
    \s[3]_INST_0 
       (.I0(\inst/fa3/cout2__0 ),
        .I1(a[2]),
        .I2(\inst/temp__2 [2]),
        .I3(\inst/c_2 ),
        .O(s[3]));
  LUT6 #(
    .INIT(64'h999999956666666A)) 
    \s[3]_INST_0_i_1 
       (.I0(b[3]),
        .I1(m),
        .I2(b[0]),
        .I3(b[1]),
        .I4(b[2]),
        .I5(a[3]),
        .O(\inst/fa3/cout2__0 ));
endmodule

(* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "adder_0" *) (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7
   (a,
    b,
    cin,
    m,
    cout,
    s,
    o);
  input [3:0]a;
  input [3:0]b;
  input cin;
  input m;
  output cout;
  output [3:0]s;
  output o;

  wire [3:0]a;
  wire [3:0]b;
  wire cin;
  wire cout;
  wire \inst/c_2 ;
  wire \inst/fa3/cout2__0 ;
  wire [3:2]\inst/temp__2 ;
  wire m;
  wire o;
  wire [3:0]s;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    cout_INST_0
       (.I0(\inst/c_2 ),
        .I1(\inst/temp__2 [2]),
        .I2(a[2]),
        .I3(\inst/temp__2 [3]),
        .I4(a[3]),
        .O(cout));
  LUT6 #(
    .INIT(64'hFBECFFE820C8E800)) 
    cout_INST_0_i_1
       (.I0(cin),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(m),
        .I5(a[1]),
        .O(\inst/c_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    cout_INST_0_i_2
       (.I0(b[0]),
        .I1(b[1]),
        .I2(m),
        .I3(b[2]),
        .O(\inst/temp__2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    cout_INST_0_i_3
       (.I0(b[2]),
        .I1(b[1]),
        .I2(b[0]),
        .I3(m),
        .I4(b[3]),
        .O(\inst/temp__2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h11181888)) 
    o_INST_0
       (.I0(a[3]),
        .I1(\inst/temp__2 [3]),
        .I2(a[2]),
        .I3(\inst/temp__2 [2]),
        .I4(\inst/c_2 ),
        .O(o));
  LUT3 #(
    .INIT(8'h96)) 
    \s[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(cin),
        .O(s[0]));
  LUT6 #(
    .INIT(64'h6969A55A69965A5A)) 
    \s[1]_INST_0 
       (.I0(a[1]),
        .I1(m),
        .I2(b[1]),
        .I3(a[0]),
        .I4(b[0]),
        .I5(cin),
        .O(s[1]));
  LUT6 #(
    .INIT(64'h56AAA955A95556AA)) 
    \s[2]_INST_0 
       (.I0(a[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(m),
        .I4(b[2]),
        .I5(\inst/c_2 ),
        .O(s[2]));
  LUT4 #(
    .INIT(16'h566A)) 
    \s[3]_INST_0 
       (.I0(\inst/fa3/cout2__0 ),
        .I1(a[2]),
        .I2(\inst/temp__2 [2]),
        .I3(\inst/c_2 ),
        .O(s[3]));
  LUT6 #(
    .INIT(64'h999999956666666A)) 
    \s[3]_INST_0_i_1 
       (.I0(b[3]),
        .I1(m),
        .I2(b[0]),
        .I3(b[1]),
        .I4(b[2]),
        .I5(a[3]),
        .O(\inst/fa3/cout2__0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_32
   (s,
    cout,
    a,
    b,
    m);
  output [31:0]s;
  output cout;
  input [31:0]a;
  input [31:0]b;
  input m;

  wire [31:0]a;
  wire [31:0]b;
  wire c_1;
  wire c_2;
  wire c_3;
  wire c_4;
  wire c_5;
  wire c_6;
  wire c_7;
  wire cout;
  wire fa1_i_5_n_0;
  wire fa1_i_5_n_1;
  wire fa1_i_5_n_2;
  wire fa1_i_5_n_3;
  wire fa2_i_5_n_0;
  wire fa2_i_5_n_1;
  wire fa2_i_5_n_2;
  wire fa2_i_5_n_3;
  wire fa3_i_5_n_0;
  wire fa3_i_5_n_1;
  wire fa3_i_5_n_2;
  wire fa3_i_5_n_3;
  wire fa4_i_5_n_0;
  wire fa4_i_5_n_1;
  wire fa4_i_5_n_2;
  wire fa4_i_5_n_3;
  wire fa5_i_5_n_0;
  wire fa5_i_5_n_1;
  wire fa5_i_5_n_2;
  wire fa5_i_5_n_3;
  wire fa6_i_5_n_0;
  wire fa6_i_5_n_1;
  wire fa6_i_5_n_2;
  wire fa6_i_5_n_3;
  wire fa7_i_5_n_2;
  wire fa7_i_5_n_3;
  wire fa7_i_6_n_0;
  wire fa7_i_6_n_1;
  wire fa7_i_6_n_2;
  wire fa7_i_6_n_3;
  wire m;
  wire [31:0]p_0_in;
  wire [31:0]s;
  wire [31:1]temp;
  wire [31:1]temp0;
  wire NLW_fa0_o_UNCONNECTED;
  wire NLW_fa1_o_UNCONNECTED;
  wire NLW_fa2_o_UNCONNECTED;
  wire NLW_fa3_o_UNCONNECTED;
  wire NLW_fa4_o_UNCONNECTED;
  wire NLW_fa5_o_UNCONNECTED;
  wire NLW_fa6_o_UNCONNECTED;
  wire NLW_fa7_o_UNCONNECTED;
  wire [3:2]NLW_fa7_i_5_CO_UNCONNECTED;
  wire [3:3]NLW_fa7_i_5_O_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1 fa0
       (.a(a[3:0]),
        .b({temp[3:1],b[0]}),
        .cin(1'b0),
        .cout(c_1),
        .m(1'b0),
        .o(NLW_fa0_o_UNCONNECTED),
        .s(s[3:0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa0_i_1
       (.I0(temp0[3]),
        .I1(b[3]),
        .I2(m),
        .O(temp[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa0_i_2
       (.I0(temp0[2]),
        .I1(b[2]),
        .I2(m),
        .O(temp[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa0_i_3
       (.I0(temp0[1]),
        .I1(b[1]),
        .I2(m),
        .O(temp[1]));
  (* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2 fa1
       (.a(a[7:4]),
        .b(temp[7:4]),
        .cin(c_1),
        .cout(c_2),
        .m(1'b0),
        .o(NLW_fa1_o_UNCONNECTED),
        .s(s[7:4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa1_i_1
       (.I0(temp0[7]),
        .I1(b[7]),
        .I2(m),
        .O(temp[7]));
  LUT1 #(
    .INIT(2'h1)) 
    fa1_i_10
       (.I0(b[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa1_i_2
       (.I0(temp0[6]),
        .I1(b[6]),
        .I2(m),
        .O(temp[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa1_i_3
       (.I0(temp0[5]),
        .I1(b[5]),
        .I2(m),
        .O(temp[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa1_i_4
       (.I0(temp0[4]),
        .I1(b[4]),
        .I2(m),
        .O(temp[4]));
  CARRY4 fa1_i_5
       (.CI(1'b0),
        .CO({fa1_i_5_n_0,fa1_i_5_n_1,fa1_i_5_n_2,fa1_i_5_n_3}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0[4:1]),
        .S(p_0_in[4:1]));
  LUT1 #(
    .INIT(2'h1)) 
    fa1_i_6
       (.I0(b[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    fa1_i_7
       (.I0(b[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    fa1_i_8
       (.I0(b[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    fa1_i_9
       (.I0(b[2]),
        .O(p_0_in[2]));
  (* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3 fa2
       (.a(a[11:8]),
        .b(temp[11:8]),
        .cin(c_2),
        .cout(c_3),
        .m(1'b0),
        .o(NLW_fa2_o_UNCONNECTED),
        .s(s[11:8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa2_i_1
       (.I0(temp0[11]),
        .I1(b[11]),
        .I2(m),
        .O(temp[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa2_i_2
       (.I0(temp0[10]),
        .I1(b[10]),
        .I2(m),
        .O(temp[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa2_i_3
       (.I0(temp0[9]),
        .I1(b[9]),
        .I2(m),
        .O(temp[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa2_i_4
       (.I0(temp0[8]),
        .I1(b[8]),
        .I2(m),
        .O(temp[8]));
  CARRY4 fa2_i_5
       (.CI(fa1_i_5_n_0),
        .CO({fa2_i_5_n_0,fa2_i_5_n_1,fa2_i_5_n_2,fa2_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0[8:5]),
        .S(p_0_in[8:5]));
  LUT1 #(
    .INIT(2'h1)) 
    fa2_i_6
       (.I0(b[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    fa2_i_7
       (.I0(b[7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    fa2_i_8
       (.I0(b[6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    fa2_i_9
       (.I0(b[5]),
        .O(p_0_in[5]));
  (* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4 fa3
       (.a(a[15:12]),
        .b(temp[15:12]),
        .cin(c_3),
        .cout(c_4),
        .m(1'b0),
        .o(NLW_fa3_o_UNCONNECTED),
        .s(s[15:12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa3_i_1
       (.I0(temp0[15]),
        .I1(b[15]),
        .I2(m),
        .O(temp[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa3_i_2
       (.I0(temp0[14]),
        .I1(b[14]),
        .I2(m),
        .O(temp[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa3_i_3
       (.I0(temp0[13]),
        .I1(b[13]),
        .I2(m),
        .O(temp[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa3_i_4
       (.I0(temp0[12]),
        .I1(b[12]),
        .I2(m),
        .O(temp[12]));
  CARRY4 fa3_i_5
       (.CI(fa2_i_5_n_0),
        .CO({fa3_i_5_n_0,fa3_i_5_n_1,fa3_i_5_n_2,fa3_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0[12:9]),
        .S(p_0_in[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    fa3_i_6
       (.I0(b[12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    fa3_i_7
       (.I0(b[11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    fa3_i_8
       (.I0(b[10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    fa3_i_9
       (.I0(b[9]),
        .O(p_0_in[9]));
  (* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5 fa4
       (.a(a[19:16]),
        .b(temp[19:16]),
        .cin(c_4),
        .cout(c_5),
        .m(1'b0),
        .o(NLW_fa4_o_UNCONNECTED),
        .s(s[19:16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa4_i_1
       (.I0(temp0[19]),
        .I1(b[19]),
        .I2(m),
        .O(temp[19]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa4_i_2
       (.I0(temp0[18]),
        .I1(b[18]),
        .I2(m),
        .O(temp[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa4_i_3
       (.I0(temp0[17]),
        .I1(b[17]),
        .I2(m),
        .O(temp[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa4_i_4
       (.I0(temp0[16]),
        .I1(b[16]),
        .I2(m),
        .O(temp[16]));
  CARRY4 fa4_i_5
       (.CI(fa3_i_5_n_0),
        .CO({fa4_i_5_n_0,fa4_i_5_n_1,fa4_i_5_n_2,fa4_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0[16:13]),
        .S(p_0_in[16:13]));
  LUT1 #(
    .INIT(2'h1)) 
    fa4_i_6
       (.I0(b[16]),
        .O(p_0_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    fa4_i_7
       (.I0(b[15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    fa4_i_8
       (.I0(b[14]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    fa4_i_9
       (.I0(b[13]),
        .O(p_0_in[13]));
  (* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6 fa5
       (.a(a[23:20]),
        .b(temp[23:20]),
        .cin(c_5),
        .cout(c_6),
        .m(1'b0),
        .o(NLW_fa5_o_UNCONNECTED),
        .s(s[23:20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa5_i_1
       (.I0(temp0[23]),
        .I1(b[23]),
        .I2(m),
        .O(temp[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa5_i_2
       (.I0(temp0[22]),
        .I1(b[22]),
        .I2(m),
        .O(temp[22]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa5_i_3
       (.I0(temp0[21]),
        .I1(b[21]),
        .I2(m),
        .O(temp[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa5_i_4
       (.I0(temp0[20]),
        .I1(b[20]),
        .I2(m),
        .O(temp[20]));
  CARRY4 fa5_i_5
       (.CI(fa4_i_5_n_0),
        .CO({fa5_i_5_n_0,fa5_i_5_n_1,fa5_i_5_n_2,fa5_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0[20:17]),
        .S(p_0_in[20:17]));
  LUT1 #(
    .INIT(2'h1)) 
    fa5_i_6
       (.I0(b[20]),
        .O(p_0_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    fa5_i_7
       (.I0(b[19]),
        .O(p_0_in[19]));
  LUT1 #(
    .INIT(2'h1)) 
    fa5_i_8
       (.I0(b[18]),
        .O(p_0_in[18]));
  LUT1 #(
    .INIT(2'h1)) 
    fa5_i_9
       (.I0(b[17]),
        .O(p_0_in[17]));
  (* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7 fa6
       (.a(a[27:24]),
        .b(temp[27:24]),
        .cin(c_6),
        .cout(c_7),
        .m(1'b0),
        .o(NLW_fa6_o_UNCONNECTED),
        .s(s[27:24]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa6_i_1
       (.I0(temp0[27]),
        .I1(b[27]),
        .I2(m),
        .O(temp[27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa6_i_2
       (.I0(temp0[26]),
        .I1(b[26]),
        .I2(m),
        .O(temp[26]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa6_i_3
       (.I0(temp0[25]),
        .I1(b[25]),
        .I2(m),
        .O(temp[25]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa6_i_4
       (.I0(temp0[24]),
        .I1(b[24]),
        .I2(m),
        .O(temp[24]));
  CARRY4 fa6_i_5
       (.CI(fa5_i_5_n_0),
        .CO({fa6_i_5_n_0,fa6_i_5_n_1,fa6_i_5_n_2,fa6_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0[24:21]),
        .S(p_0_in[24:21]));
  LUT1 #(
    .INIT(2'h1)) 
    fa6_i_6
       (.I0(b[24]),
        .O(p_0_in[24]));
  LUT1 #(
    .INIT(2'h1)) 
    fa6_i_7
       (.I0(b[23]),
        .O(p_0_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    fa6_i_8
       (.I0(b[22]),
        .O(p_0_in[22]));
  LUT1 #(
    .INIT(2'h1)) 
    fa6_i_9
       (.I0(b[21]),
        .O(p_0_in[21]));
  (* CHECK_LICENSE_TYPE = "adder_0,adder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 fa7
       (.a(a[31:28]),
        .b(temp[31:28]),
        .cin(c_7),
        .cout(cout),
        .m(1'b0),
        .o(NLW_fa7_o_UNCONNECTED),
        .s(s[31:28]));
  LUT3 #(
    .INIT(8'hAC)) 
    fa7_i_1
       (.I0(temp0[31]),
        .I1(b[31]),
        .I2(m),
        .O(temp[31]));
  LUT1 #(
    .INIT(2'h1)) 
    fa7_i_10
       (.I0(b[28]),
        .O(p_0_in[28]));
  LUT1 #(
    .INIT(2'h1)) 
    fa7_i_11
       (.I0(b[27]),
        .O(p_0_in[27]));
  LUT1 #(
    .INIT(2'h1)) 
    fa7_i_12
       (.I0(b[26]),
        .O(p_0_in[26]));
  LUT1 #(
    .INIT(2'h1)) 
    fa7_i_13
       (.I0(b[25]),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa7_i_2
       (.I0(temp0[30]),
        .I1(b[30]),
        .I2(m),
        .O(temp[30]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa7_i_3
       (.I0(temp0[29]),
        .I1(b[29]),
        .I2(m),
        .O(temp[29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    fa7_i_4
       (.I0(temp0[28]),
        .I1(b[28]),
        .I2(m),
        .O(temp[28]));
  CARRY4 fa7_i_5
       (.CI(fa7_i_6_n_0),
        .CO({NLW_fa7_i_5_CO_UNCONNECTED[3:2],fa7_i_5_n_2,fa7_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_fa7_i_5_O_UNCONNECTED[3],temp0[31:29]}),
        .S({1'b0,p_0_in[31:29]}));
  CARRY4 fa7_i_6
       (.CI(fa6_i_5_n_0),
        .CO({fa7_i_6_n_0,fa7_i_6_n_1,fa7_i_6_n_2,fa7_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0[28:25]),
        .S(p_0_in[28:25]));
  LUT1 #(
    .INIT(2'h1)) 
    fa7_i_7
       (.I0(b[31]),
        .O(p_0_in[31]));
  LUT1 #(
    .INIT(2'h1)) 
    fa7_i_8
       (.I0(b[30]),
        .O(p_0_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    fa7_i_9
       (.I0(b[29]),
        .O(p_0_in[29]));
endmodule

(* CHECK_LICENSE_TYPE = "adder_32_0,adder_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "adder_32,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    b,
    m,
    s,
    cout);
  input [31:0]a;
  input [31:0]b;
  input m;
  output [31:0]s;
  output cout;

  wire [31:0]a;
  wire [31:0]b;
  wire cout;
  wire m;
  wire [31:0]s;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_32 inst
       (.a(a),
        .b(b),
        .cout(cout),
        .m(m),
        .s(s));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
