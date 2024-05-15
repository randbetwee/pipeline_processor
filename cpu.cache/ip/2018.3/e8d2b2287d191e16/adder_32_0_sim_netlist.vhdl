-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Nov 14 16:11:32 2022
-- Host        : LAPTOP-0I44SIOD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_32_0_sim_netlist.vhdl
-- Design      : adder_32_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cin : in STD_LOGIC;
    m : in STD_LOGIC;
    cout : out STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 : entity is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 : entity is "adder,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  signal \inst/c_2\ : STD_LOGIC;
  signal \inst/fa3/cout2__0\ : STD_LOGIC;
  signal \inst/temp__2\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of cout_INST_0_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of cout_INST_0_i_3 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of o_INST_0 : label is "soft_lutpair14";
begin
cout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \inst/c_2\,
      I1 => \inst/temp__2\(2),
      I2 => a(2),
      I3 => \inst/temp__2\(3),
      I4 => a(3),
      O => cout
    );
cout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBECFFE820C8E800"
    )
        port map (
      I0 => cin,
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => m,
      I5 => a(1),
      O => \inst/c_2\
    );
cout_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => m,
      I3 => b(2),
      O => \inst/temp__2\(2)
    );
cout_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => b(0),
      I3 => m,
      I4 => b(3),
      O => \inst/temp__2\(3)
    );
o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11181888"
    )
        port map (
      I0 => a(3),
      I1 => \inst/temp__2\(3),
      I2 => a(2),
      I3 => \inst/temp__2\(2),
      I4 => \inst/c_2\,
      O => o
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => cin,
      O => s(0)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969A55A69965A5A"
    )
        port map (
      I0 => a(1),
      I1 => m,
      I2 => b(1),
      I3 => a(0),
      I4 => b(0),
      I5 => cin,
      O => s(1)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => a(2),
      I1 => b(0),
      I2 => b(1),
      I3 => m,
      I4 => b(2),
      I5 => \inst/c_2\,
      O => s(2)
    );
\s[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \inst/fa3/cout2__0\,
      I1 => a(2),
      I2 => \inst/temp__2\(2),
      I3 => \inst/c_2\,
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999956666666A"
    )
        port map (
      I0 => b(3),
      I1 => m,
      I2 => b(0),
      I3 => b(1),
      I4 => b(2),
      I5 => a(3),
      O => \inst/fa3/cout2__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1\ is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cin : in STD_LOGIC;
    m : in STD_LOGIC;
    cout : out STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1\ : entity is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1\ : entity is "adder_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1\ : entity is "adder,Vivado 2018.3";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1\ is
  signal \inst/c_2\ : STD_LOGIC;
  signal \inst/fa3/cout2__0\ : STD_LOGIC;
  signal \inst/temp__2\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of cout_INST_0_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of cout_INST_0_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_INST_0 : label is "soft_lutpair0";
begin
cout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \inst/c_2\,
      I1 => \inst/temp__2\(2),
      I2 => a(2),
      I3 => \inst/temp__2\(3),
      I4 => a(3),
      O => cout
    );
cout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBECFFE820C8E800"
    )
        port map (
      I0 => cin,
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => m,
      I5 => a(1),
      O => \inst/c_2\
    );
cout_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => m,
      I3 => b(2),
      O => \inst/temp__2\(2)
    );
cout_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => b(0),
      I3 => m,
      I4 => b(3),
      O => \inst/temp__2\(3)
    );
o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11181888"
    )
        port map (
      I0 => a(3),
      I1 => \inst/temp__2\(3),
      I2 => a(2),
      I3 => \inst/temp__2\(2),
      I4 => \inst/c_2\,
      O => o
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => cin,
      O => s(0)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969A55A69965A5A"
    )
        port map (
      I0 => a(1),
      I1 => m,
      I2 => b(1),
      I3 => a(0),
      I4 => b(0),
      I5 => cin,
      O => s(1)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => a(2),
      I1 => b(0),
      I2 => b(1),
      I3 => m,
      I4 => b(2),
      I5 => \inst/c_2\,
      O => s(2)
    );
\s[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \inst/fa3/cout2__0\,
      I1 => a(2),
      I2 => \inst/temp__2\(2),
      I3 => \inst/c_2\,
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999956666666A"
    )
        port map (
      I0 => b(3),
      I1 => m,
      I2 => b(0),
      I3 => b(1),
      I4 => b(2),
      I5 => a(3),
      O => \inst/fa3/cout2__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2\ is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cin : in STD_LOGIC;
    m : in STD_LOGIC;
    cout : out STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2\ : entity is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2\ : entity is "adder_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2\ : entity is "adder,Vivado 2018.3";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2\ is
  signal \inst/c_2\ : STD_LOGIC;
  signal \inst/fa3/cout2__0\ : STD_LOGIC;
  signal \inst/temp__2\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of cout_INST_0_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of cout_INST_0_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_INST_0 : label is "soft_lutpair2";
begin
cout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \inst/c_2\,
      I1 => \inst/temp__2\(2),
      I2 => a(2),
      I3 => \inst/temp__2\(3),
      I4 => a(3),
      O => cout
    );
cout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBECFFE820C8E800"
    )
        port map (
      I0 => cin,
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => m,
      I5 => a(1),
      O => \inst/c_2\
    );
cout_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => m,
      I3 => b(2),
      O => \inst/temp__2\(2)
    );
cout_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => b(0),
      I3 => m,
      I4 => b(3),
      O => \inst/temp__2\(3)
    );
o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11181888"
    )
        port map (
      I0 => a(3),
      I1 => \inst/temp__2\(3),
      I2 => a(2),
      I3 => \inst/temp__2\(2),
      I4 => \inst/c_2\,
      O => o
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => cin,
      O => s(0)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969A55A69965A5A"
    )
        port map (
      I0 => a(1),
      I1 => m,
      I2 => b(1),
      I3 => a(0),
      I4 => b(0),
      I5 => cin,
      O => s(1)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => a(2),
      I1 => b(0),
      I2 => b(1),
      I3 => m,
      I4 => b(2),
      I5 => \inst/c_2\,
      O => s(2)
    );
\s[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \inst/fa3/cout2__0\,
      I1 => a(2),
      I2 => \inst/temp__2\(2),
      I3 => \inst/c_2\,
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999956666666A"
    )
        port map (
      I0 => b(3),
      I1 => m,
      I2 => b(0),
      I3 => b(1),
      I4 => b(2),
      I5 => a(3),
      O => \inst/fa3/cout2__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3\ is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cin : in STD_LOGIC;
    m : in STD_LOGIC;
    cout : out STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3\ : entity is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3\ : entity is "adder_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3\ : entity is "adder,Vivado 2018.3";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3\ is
  signal \inst/c_2\ : STD_LOGIC;
  signal \inst/fa3/cout2__0\ : STD_LOGIC;
  signal \inst/temp__2\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of cout_INST_0_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of cout_INST_0_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_INST_0 : label is "soft_lutpair4";
begin
cout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \inst/c_2\,
      I1 => \inst/temp__2\(2),
      I2 => a(2),
      I3 => \inst/temp__2\(3),
      I4 => a(3),
      O => cout
    );
cout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBECFFE820C8E800"
    )
        port map (
      I0 => cin,
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => m,
      I5 => a(1),
      O => \inst/c_2\
    );
cout_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => m,
      I3 => b(2),
      O => \inst/temp__2\(2)
    );
cout_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => b(0),
      I3 => m,
      I4 => b(3),
      O => \inst/temp__2\(3)
    );
o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11181888"
    )
        port map (
      I0 => a(3),
      I1 => \inst/temp__2\(3),
      I2 => a(2),
      I3 => \inst/temp__2\(2),
      I4 => \inst/c_2\,
      O => o
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => cin,
      O => s(0)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969A55A69965A5A"
    )
        port map (
      I0 => a(1),
      I1 => m,
      I2 => b(1),
      I3 => a(0),
      I4 => b(0),
      I5 => cin,
      O => s(1)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => a(2),
      I1 => b(0),
      I2 => b(1),
      I3 => m,
      I4 => b(2),
      I5 => \inst/c_2\,
      O => s(2)
    );
\s[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \inst/fa3/cout2__0\,
      I1 => a(2),
      I2 => \inst/temp__2\(2),
      I3 => \inst/c_2\,
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999956666666A"
    )
        port map (
      I0 => b(3),
      I1 => m,
      I2 => b(0),
      I3 => b(1),
      I4 => b(2),
      I5 => a(3),
      O => \inst/fa3/cout2__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4\ is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cin : in STD_LOGIC;
    m : in STD_LOGIC;
    cout : out STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4\ : entity is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4\ : entity is "adder_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4\ : entity is "adder,Vivado 2018.3";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4\ is
  signal \inst/c_2\ : STD_LOGIC;
  signal \inst/fa3/cout2__0\ : STD_LOGIC;
  signal \inst/temp__2\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of cout_INST_0_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of cout_INST_0_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of o_INST_0 : label is "soft_lutpair6";
begin
cout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \inst/c_2\,
      I1 => \inst/temp__2\(2),
      I2 => a(2),
      I3 => \inst/temp__2\(3),
      I4 => a(3),
      O => cout
    );
cout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBECFFE820C8E800"
    )
        port map (
      I0 => cin,
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => m,
      I5 => a(1),
      O => \inst/c_2\
    );
cout_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => m,
      I3 => b(2),
      O => \inst/temp__2\(2)
    );
cout_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => b(0),
      I3 => m,
      I4 => b(3),
      O => \inst/temp__2\(3)
    );
o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11181888"
    )
        port map (
      I0 => a(3),
      I1 => \inst/temp__2\(3),
      I2 => a(2),
      I3 => \inst/temp__2\(2),
      I4 => \inst/c_2\,
      O => o
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => cin,
      O => s(0)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969A55A69965A5A"
    )
        port map (
      I0 => a(1),
      I1 => m,
      I2 => b(1),
      I3 => a(0),
      I4 => b(0),
      I5 => cin,
      O => s(1)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => a(2),
      I1 => b(0),
      I2 => b(1),
      I3 => m,
      I4 => b(2),
      I5 => \inst/c_2\,
      O => s(2)
    );
\s[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \inst/fa3/cout2__0\,
      I1 => a(2),
      I2 => \inst/temp__2\(2),
      I3 => \inst/c_2\,
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999956666666A"
    )
        port map (
      I0 => b(3),
      I1 => m,
      I2 => b(0),
      I3 => b(1),
      I4 => b(2),
      I5 => a(3),
      O => \inst/fa3/cout2__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5\ is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cin : in STD_LOGIC;
    m : in STD_LOGIC;
    cout : out STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5\ : entity is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5\ : entity is "adder_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5\ : entity is "adder,Vivado 2018.3";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5\ is
  signal \inst/c_2\ : STD_LOGIC;
  signal \inst/fa3/cout2__0\ : STD_LOGIC;
  signal \inst/temp__2\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of cout_INST_0_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of cout_INST_0_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of o_INST_0 : label is "soft_lutpair8";
begin
cout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \inst/c_2\,
      I1 => \inst/temp__2\(2),
      I2 => a(2),
      I3 => \inst/temp__2\(3),
      I4 => a(3),
      O => cout
    );
cout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBECFFE820C8E800"
    )
        port map (
      I0 => cin,
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => m,
      I5 => a(1),
      O => \inst/c_2\
    );
cout_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => m,
      I3 => b(2),
      O => \inst/temp__2\(2)
    );
cout_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => b(0),
      I3 => m,
      I4 => b(3),
      O => \inst/temp__2\(3)
    );
o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11181888"
    )
        port map (
      I0 => a(3),
      I1 => \inst/temp__2\(3),
      I2 => a(2),
      I3 => \inst/temp__2\(2),
      I4 => \inst/c_2\,
      O => o
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => cin,
      O => s(0)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969A55A69965A5A"
    )
        port map (
      I0 => a(1),
      I1 => m,
      I2 => b(1),
      I3 => a(0),
      I4 => b(0),
      I5 => cin,
      O => s(1)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => a(2),
      I1 => b(0),
      I2 => b(1),
      I3 => m,
      I4 => b(2),
      I5 => \inst/c_2\,
      O => s(2)
    );
\s[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \inst/fa3/cout2__0\,
      I1 => a(2),
      I2 => \inst/temp__2\(2),
      I3 => \inst/c_2\,
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999956666666A"
    )
        port map (
      I0 => b(3),
      I1 => m,
      I2 => b(0),
      I3 => b(1),
      I4 => b(2),
      I5 => a(3),
      O => \inst/fa3/cout2__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6\ is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cin : in STD_LOGIC;
    m : in STD_LOGIC;
    cout : out STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6\ : entity is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6\ : entity is "adder_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6\ : entity is "adder,Vivado 2018.3";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6\ is
  signal \inst/c_2\ : STD_LOGIC;
  signal \inst/fa3/cout2__0\ : STD_LOGIC;
  signal \inst/temp__2\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of cout_INST_0_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of cout_INST_0_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of o_INST_0 : label is "soft_lutpair10";
begin
cout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \inst/c_2\,
      I1 => \inst/temp__2\(2),
      I2 => a(2),
      I3 => \inst/temp__2\(3),
      I4 => a(3),
      O => cout
    );
cout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBECFFE820C8E800"
    )
        port map (
      I0 => cin,
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => m,
      I5 => a(1),
      O => \inst/c_2\
    );
cout_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => m,
      I3 => b(2),
      O => \inst/temp__2\(2)
    );
cout_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => b(0),
      I3 => m,
      I4 => b(3),
      O => \inst/temp__2\(3)
    );
o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11181888"
    )
        port map (
      I0 => a(3),
      I1 => \inst/temp__2\(3),
      I2 => a(2),
      I3 => \inst/temp__2\(2),
      I4 => \inst/c_2\,
      O => o
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => cin,
      O => s(0)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969A55A69965A5A"
    )
        port map (
      I0 => a(1),
      I1 => m,
      I2 => b(1),
      I3 => a(0),
      I4 => b(0),
      I5 => cin,
      O => s(1)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => a(2),
      I1 => b(0),
      I2 => b(1),
      I3 => m,
      I4 => b(2),
      I5 => \inst/c_2\,
      O => s(2)
    );
\s[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \inst/fa3/cout2__0\,
      I1 => a(2),
      I2 => \inst/temp__2\(2),
      I3 => \inst/c_2\,
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999956666666A"
    )
        port map (
      I0 => b(3),
      I1 => m,
      I2 => b(0),
      I3 => b(1),
      I4 => b(2),
      I5 => a(3),
      O => \inst/fa3/cout2__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7\ is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cin : in STD_LOGIC;
    m : in STD_LOGIC;
    cout : out STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7\ : entity is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7\ : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7\ : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7\ : entity is "adder_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7\ : entity is "adder,Vivado 2018.3";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7\ is
  signal \inst/c_2\ : STD_LOGIC;
  signal \inst/fa3/cout2__0\ : STD_LOGIC;
  signal \inst/temp__2\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of cout_INST_0_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of cout_INST_0_i_3 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of o_INST_0 : label is "soft_lutpair12";
begin
cout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \inst/c_2\,
      I1 => \inst/temp__2\(2),
      I2 => a(2),
      I3 => \inst/temp__2\(3),
      I4 => a(3),
      O => cout
    );
cout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBECFFE820C8E800"
    )
        port map (
      I0 => cin,
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => m,
      I5 => a(1),
      O => \inst/c_2\
    );
cout_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => m,
      I3 => b(2),
      O => \inst/temp__2\(2)
    );
cout_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => b(0),
      I3 => m,
      I4 => b(3),
      O => \inst/temp__2\(3)
    );
o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11181888"
    )
        port map (
      I0 => a(3),
      I1 => \inst/temp__2\(3),
      I2 => a(2),
      I3 => \inst/temp__2\(2),
      I4 => \inst/c_2\,
      O => o
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => cin,
      O => s(0)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969A55A69965A5A"
    )
        port map (
      I0 => a(1),
      I1 => m,
      I2 => b(1),
      I3 => a(0),
      I4 => b(0),
      I5 => cin,
      O => s(1)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => a(2),
      I1 => b(0),
      I2 => b(1),
      I3 => m,
      I4 => b(2),
      I5 => \inst/c_2\,
      O => s(2)
    );
\s[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \inst/fa3/cout2__0\,
      I1 => a(2),
      I2 => \inst/temp__2\(2),
      I3 => \inst/c_2\,
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999956666666A"
    )
        port map (
      I0 => b(3),
      I1 => m,
      I2 => b(0),
      I3 => b(1),
      I4 => b(2),
      I5 => a(3),
      O => \inst/fa3/cout2__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_32 is
  port (
    s : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cout : out STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_32 is
  signal c_1 : STD_LOGIC;
  signal c_2 : STD_LOGIC;
  signal c_3 : STD_LOGIC;
  signal c_4 : STD_LOGIC;
  signal c_5 : STD_LOGIC;
  signal c_6 : STD_LOGIC;
  signal c_7 : STD_LOGIC;
  signal fa1_i_5_n_0 : STD_LOGIC;
  signal fa1_i_5_n_1 : STD_LOGIC;
  signal fa1_i_5_n_2 : STD_LOGIC;
  signal fa1_i_5_n_3 : STD_LOGIC;
  signal fa2_i_5_n_0 : STD_LOGIC;
  signal fa2_i_5_n_1 : STD_LOGIC;
  signal fa2_i_5_n_2 : STD_LOGIC;
  signal fa2_i_5_n_3 : STD_LOGIC;
  signal fa3_i_5_n_0 : STD_LOGIC;
  signal fa3_i_5_n_1 : STD_LOGIC;
  signal fa3_i_5_n_2 : STD_LOGIC;
  signal fa3_i_5_n_3 : STD_LOGIC;
  signal fa4_i_5_n_0 : STD_LOGIC;
  signal fa4_i_5_n_1 : STD_LOGIC;
  signal fa4_i_5_n_2 : STD_LOGIC;
  signal fa4_i_5_n_3 : STD_LOGIC;
  signal fa5_i_5_n_0 : STD_LOGIC;
  signal fa5_i_5_n_1 : STD_LOGIC;
  signal fa5_i_5_n_2 : STD_LOGIC;
  signal fa5_i_5_n_3 : STD_LOGIC;
  signal fa6_i_5_n_0 : STD_LOGIC;
  signal fa6_i_5_n_1 : STD_LOGIC;
  signal fa6_i_5_n_2 : STD_LOGIC;
  signal fa6_i_5_n_3 : STD_LOGIC;
  signal fa7_i_5_n_2 : STD_LOGIC;
  signal fa7_i_5_n_3 : STD_LOGIC;
  signal fa7_i_6_n_0 : STD_LOGIC;
  signal fa7_i_6_n_1 : STD_LOGIC;
  signal fa7_i_6_n_2 : STD_LOGIC;
  signal fa7_i_6_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal temp : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal temp0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_fa0_o_UNCONNECTED : STD_LOGIC;
  signal NLW_fa1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_fa2_o_UNCONNECTED : STD_LOGIC;
  signal NLW_fa3_o_UNCONNECTED : STD_LOGIC;
  signal NLW_fa4_o_UNCONNECTED : STD_LOGIC;
  signal NLW_fa5_o_UNCONNECTED : STD_LOGIC;
  signal NLW_fa6_o_UNCONNECTED : STD_LOGIC;
  signal NLW_fa7_o_UNCONNECTED : STD_LOGIC;
  signal NLW_fa7_i_5_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_fa7_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fa0 : label is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fa0 : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fa0 : label is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fa0 : label is "adder,Vivado 2018.3";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fa0_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of fa0_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of fa0_i_3 : label is "soft_lutpair16";
  attribute CHECK_LICENSE_TYPE of fa1 : label is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings of fa1 : label is "yes";
  attribute IP_DEFINITION_SOURCE of fa1 : label is "package_project";
  attribute X_CORE_INFO of fa1 : label is "adder,Vivado 2018.3";
  attribute SOFT_HLUTNM of fa1_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of fa1_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of fa1_i_3 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of fa1_i_4 : label is "soft_lutpair17";
  attribute CHECK_LICENSE_TYPE of fa2 : label is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings of fa2 : label is "yes";
  attribute IP_DEFINITION_SOURCE of fa2 : label is "package_project";
  attribute X_CORE_INFO of fa2 : label is "adder,Vivado 2018.3";
  attribute SOFT_HLUTNM of fa2_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of fa2_i_2 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of fa2_i_3 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of fa2_i_4 : label is "soft_lutpair19";
  attribute CHECK_LICENSE_TYPE of fa3 : label is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings of fa3 : label is "yes";
  attribute IP_DEFINITION_SOURCE of fa3 : label is "package_project";
  attribute X_CORE_INFO of fa3 : label is "adder,Vivado 2018.3";
  attribute SOFT_HLUTNM of fa3_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of fa3_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of fa3_i_3 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of fa3_i_4 : label is "soft_lutpair21";
  attribute CHECK_LICENSE_TYPE of fa4 : label is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings of fa4 : label is "yes";
  attribute IP_DEFINITION_SOURCE of fa4 : label is "package_project";
  attribute X_CORE_INFO of fa4 : label is "adder,Vivado 2018.3";
  attribute SOFT_HLUTNM of fa4_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of fa4_i_2 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of fa4_i_3 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of fa4_i_4 : label is "soft_lutpair23";
  attribute CHECK_LICENSE_TYPE of fa5 : label is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings of fa5 : label is "yes";
  attribute IP_DEFINITION_SOURCE of fa5 : label is "package_project";
  attribute X_CORE_INFO of fa5 : label is "adder,Vivado 2018.3";
  attribute SOFT_HLUTNM of fa5_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of fa5_i_2 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of fa5_i_3 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of fa5_i_4 : label is "soft_lutpair25";
  attribute CHECK_LICENSE_TYPE of fa6 : label is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings of fa6 : label is "yes";
  attribute IP_DEFINITION_SOURCE of fa6 : label is "package_project";
  attribute X_CORE_INFO of fa6 : label is "adder,Vivado 2018.3";
  attribute SOFT_HLUTNM of fa6_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of fa6_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of fa6_i_3 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of fa6_i_4 : label is "soft_lutpair27";
  attribute CHECK_LICENSE_TYPE of fa7 : label is "adder_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings of fa7 : label is "yes";
  attribute IP_DEFINITION_SOURCE of fa7 : label is "package_project";
  attribute X_CORE_INFO of fa7 : label is "adder,Vivado 2018.3";
  attribute SOFT_HLUTNM of fa7_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of fa7_i_3 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of fa7_i_4 : label is "soft_lutpair29";
begin
fa0: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__1\
     port map (
      a(3 downto 0) => a(3 downto 0),
      b(3 downto 1) => temp(3 downto 1),
      b(0) => b(0),
      cin => '0',
      cout => c_1,
      m => '0',
      o => NLW_fa0_o_UNCONNECTED,
      s(3 downto 0) => s(3 downto 0)
    );
fa0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(3),
      I1 => b(3),
      I2 => m,
      O => temp(3)
    );
fa0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(2),
      I1 => b(2),
      I2 => m,
      O => temp(2)
    );
fa0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(1),
      I1 => b(1),
      I2 => m,
      O => temp(1)
    );
fa1: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__2\
     port map (
      a(3 downto 0) => a(7 downto 4),
      b(3 downto 0) => temp(7 downto 4),
      cin => c_1,
      cout => c_2,
      m => '0',
      o => NLW_fa1_o_UNCONNECTED,
      s(3 downto 0) => s(7 downto 4)
    );
fa1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(7),
      I1 => b(7),
      I2 => m,
      O => temp(7)
    );
fa1_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(1),
      O => p_0_in(1)
    );
fa1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(6),
      I1 => b(6),
      I2 => m,
      O => temp(6)
    );
fa1_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(5),
      I1 => b(5),
      I2 => m,
      O => temp(5)
    );
fa1_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(4),
      I1 => b(4),
      I2 => m,
      O => temp(4)
    );
fa1_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fa1_i_5_n_0,
      CO(2) => fa1_i_5_n_1,
      CO(1) => fa1_i_5_n_2,
      CO(0) => fa1_i_5_n_3,
      CYINIT => p_0_in(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => temp0(4 downto 1),
      S(3 downto 0) => p_0_in(4 downto 1)
    );
fa1_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(0),
      O => p_0_in(0)
    );
fa1_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(4),
      O => p_0_in(4)
    );
fa1_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(3),
      O => p_0_in(3)
    );
fa1_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(2),
      O => p_0_in(2)
    );
fa2: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__3\
     port map (
      a(3 downto 0) => a(11 downto 8),
      b(3 downto 0) => temp(11 downto 8),
      cin => c_2,
      cout => c_3,
      m => '0',
      o => NLW_fa2_o_UNCONNECTED,
      s(3 downto 0) => s(11 downto 8)
    );
fa2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(11),
      I1 => b(11),
      I2 => m,
      O => temp(11)
    );
fa2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(10),
      I1 => b(10),
      I2 => m,
      O => temp(10)
    );
fa2_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(9),
      I1 => b(9),
      I2 => m,
      O => temp(9)
    );
fa2_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(8),
      I1 => b(8),
      I2 => m,
      O => temp(8)
    );
fa2_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => fa1_i_5_n_0,
      CO(3) => fa2_i_5_n_0,
      CO(2) => fa2_i_5_n_1,
      CO(1) => fa2_i_5_n_2,
      CO(0) => fa2_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => temp0(8 downto 5),
      S(3 downto 0) => p_0_in(8 downto 5)
    );
fa2_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(8),
      O => p_0_in(8)
    );
fa2_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(7),
      O => p_0_in(7)
    );
fa2_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(6),
      O => p_0_in(6)
    );
fa2_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(5),
      O => p_0_in(5)
    );
fa3: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__4\
     port map (
      a(3 downto 0) => a(15 downto 12),
      b(3 downto 0) => temp(15 downto 12),
      cin => c_3,
      cout => c_4,
      m => '0',
      o => NLW_fa3_o_UNCONNECTED,
      s(3 downto 0) => s(15 downto 12)
    );
fa3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(15),
      I1 => b(15),
      I2 => m,
      O => temp(15)
    );
fa3_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(14),
      I1 => b(14),
      I2 => m,
      O => temp(14)
    );
fa3_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(13),
      I1 => b(13),
      I2 => m,
      O => temp(13)
    );
fa3_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(12),
      I1 => b(12),
      I2 => m,
      O => temp(12)
    );
fa3_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => fa2_i_5_n_0,
      CO(3) => fa3_i_5_n_0,
      CO(2) => fa3_i_5_n_1,
      CO(1) => fa3_i_5_n_2,
      CO(0) => fa3_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => temp0(12 downto 9),
      S(3 downto 0) => p_0_in(12 downto 9)
    );
fa3_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(12),
      O => p_0_in(12)
    );
fa3_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(11),
      O => p_0_in(11)
    );
fa3_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(10),
      O => p_0_in(10)
    );
fa3_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(9),
      O => p_0_in(9)
    );
fa4: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__5\
     port map (
      a(3 downto 0) => a(19 downto 16),
      b(3 downto 0) => temp(19 downto 16),
      cin => c_4,
      cout => c_5,
      m => '0',
      o => NLW_fa4_o_UNCONNECTED,
      s(3 downto 0) => s(19 downto 16)
    );
fa4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(19),
      I1 => b(19),
      I2 => m,
      O => temp(19)
    );
fa4_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(18),
      I1 => b(18),
      I2 => m,
      O => temp(18)
    );
fa4_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(17),
      I1 => b(17),
      I2 => m,
      O => temp(17)
    );
fa4_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(16),
      I1 => b(16),
      I2 => m,
      O => temp(16)
    );
fa4_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => fa3_i_5_n_0,
      CO(3) => fa4_i_5_n_0,
      CO(2) => fa4_i_5_n_1,
      CO(1) => fa4_i_5_n_2,
      CO(0) => fa4_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => temp0(16 downto 13),
      S(3 downto 0) => p_0_in(16 downto 13)
    );
fa4_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(16),
      O => p_0_in(16)
    );
fa4_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(15),
      O => p_0_in(15)
    );
fa4_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(14),
      O => p_0_in(14)
    );
fa4_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(13),
      O => p_0_in(13)
    );
fa5: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__6\
     port map (
      a(3 downto 0) => a(23 downto 20),
      b(3 downto 0) => temp(23 downto 20),
      cin => c_5,
      cout => c_6,
      m => '0',
      o => NLW_fa5_o_UNCONNECTED,
      s(3 downto 0) => s(23 downto 20)
    );
fa5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(23),
      I1 => b(23),
      I2 => m,
      O => temp(23)
    );
fa5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(22),
      I1 => b(22),
      I2 => m,
      O => temp(22)
    );
fa5_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(21),
      I1 => b(21),
      I2 => m,
      O => temp(21)
    );
fa5_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(20),
      I1 => b(20),
      I2 => m,
      O => temp(20)
    );
fa5_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => fa4_i_5_n_0,
      CO(3) => fa5_i_5_n_0,
      CO(2) => fa5_i_5_n_1,
      CO(1) => fa5_i_5_n_2,
      CO(0) => fa5_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => temp0(20 downto 17),
      S(3 downto 0) => p_0_in(20 downto 17)
    );
fa5_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(20),
      O => p_0_in(20)
    );
fa5_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(19),
      O => p_0_in(19)
    );
fa5_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(18),
      O => p_0_in(18)
    );
fa5_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(17),
      O => p_0_in(17)
    );
fa6: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0__7\
     port map (
      a(3 downto 0) => a(27 downto 24),
      b(3 downto 0) => temp(27 downto 24),
      cin => c_6,
      cout => c_7,
      m => '0',
      o => NLW_fa6_o_UNCONNECTED,
      s(3 downto 0) => s(27 downto 24)
    );
fa6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(27),
      I1 => b(27),
      I2 => m,
      O => temp(27)
    );
fa6_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(26),
      I1 => b(26),
      I2 => m,
      O => temp(26)
    );
fa6_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(25),
      I1 => b(25),
      I2 => m,
      O => temp(25)
    );
fa6_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(24),
      I1 => b(24),
      I2 => m,
      O => temp(24)
    );
fa6_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => fa5_i_5_n_0,
      CO(3) => fa6_i_5_n_0,
      CO(2) => fa6_i_5_n_1,
      CO(1) => fa6_i_5_n_2,
      CO(0) => fa6_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => temp0(24 downto 21),
      S(3 downto 0) => p_0_in(24 downto 21)
    );
fa6_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(24),
      O => p_0_in(24)
    );
fa6_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(23),
      O => p_0_in(23)
    );
fa6_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(22),
      O => p_0_in(22)
    );
fa6_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(21),
      O => p_0_in(21)
    );
fa7: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
     port map (
      a(3 downto 0) => a(31 downto 28),
      b(3 downto 0) => temp(31 downto 28),
      cin => c_7,
      cout => cout,
      m => '0',
      o => NLW_fa7_o_UNCONNECTED,
      s(3 downto 0) => s(31 downto 28)
    );
fa7_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(31),
      I1 => b(31),
      I2 => m,
      O => temp(31)
    );
fa7_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(28),
      O => p_0_in(28)
    );
fa7_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(27),
      O => p_0_in(27)
    );
fa7_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(26),
      O => p_0_in(26)
    );
fa7_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(25),
      O => p_0_in(25)
    );
fa7_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(30),
      I1 => b(30),
      I2 => m,
      O => temp(30)
    );
fa7_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(29),
      I1 => b(29),
      I2 => m,
      O => temp(29)
    );
fa7_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => temp0(28),
      I1 => b(28),
      I2 => m,
      O => temp(28)
    );
fa7_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => fa7_i_6_n_0,
      CO(3 downto 2) => NLW_fa7_i_5_CO_UNCONNECTED(3 downto 2),
      CO(1) => fa7_i_5_n_2,
      CO(0) => fa7_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_fa7_i_5_O_UNCONNECTED(3),
      O(2 downto 0) => temp0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => p_0_in(31 downto 29)
    );
fa7_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => fa6_i_5_n_0,
      CO(3) => fa7_i_6_n_0,
      CO(2) => fa7_i_6_n_1,
      CO(1) => fa7_i_6_n_2,
      CO(0) => fa7_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => temp0(28 downto 25),
      S(3 downto 0) => p_0_in(28 downto 25)
    );
fa7_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(31),
      O => p_0_in(31)
    );
fa7_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(30),
      O => p_0_in(30)
    );
fa7_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(29),
      O => p_0_in(29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m : in STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adder_32_0,adder_32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adder_32,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_32
     port map (
      a(31 downto 0) => a(31 downto 0),
      b(31 downto 0) => b(31 downto 0),
      cout => cout,
      m => m,
      s(31 downto 0) => s(31 downto 0)
    );
end STRUCTURE;
