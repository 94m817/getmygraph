
-- VHDL Instantiation Created from source file xillydemo.vhd -- 15:05:20 03/20/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT xillydemo
	PORT(
		PS_CLK : IN std_logic;
		PS_PORB : IN std_logic;
		PS_SRSTB : IN std_logic;
		clk_100 : IN std_logic;
		otg_oc : IN std_logic;
		audio_adc : IN std_logic;
		audio_bclk : IN std_logic;
		audio_lrclk : IN std_logic;    
		DDR_Addr : INOUT std_logic_vector(14 downto 0);
		DDR_BankAddr : INOUT std_logic_vector(2 downto 0);
		DDR_CAS_n : INOUT std_logic;
		DDR_CKE : INOUT std_logic;
		DDR_CS_n : INOUT std_logic;
		DDR_Clk : INOUT std_logic;
		DDR_Clk_n : INOUT std_logic;
		DDR_DM : INOUT std_logic_vector(3 downto 0);
		DDR_DQ : INOUT std_logic_vector(31 downto 0);
		DDR_DQS : INOUT std_logic_vector(3 downto 0);
		DDR_DQS_n : INOUT std_logic_vector(3 downto 0);
		DDR_DRSTB : INOUT std_logic;
		DDR_ODT : INOUT std_logic;
		DDR_RAS_n : INOUT std_logic;
		DDR_VRN : INOUT std_logic;
		DDR_VRP : INOUT std_logic;
		MIO : INOUT std_logic_vector(53 downto 0);
		PS_GPIO : INOUT std_logic_vector(55 downto 0);
		smb_sdata : INOUT std_logic;      
		DDR_WEB : OUT std_logic;
		GPIO_LED : OUT std_logic_vector(3 downto 0);
		vga4_blue : OUT std_logic_vector(3 downto 0);
		vga4_green : OUT std_logic_vector(3 downto 0);
		vga4_red : OUT std_logic_vector(3 downto 0);
		vga_hsync : OUT std_logic;
		vga_vsync : OUT std_logic;
		audio_mclk : OUT std_logic;
		audio_dac : OUT std_logic;
		smb_sclk : OUT std_logic;
		smbus_addr : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_xillydemo: xillydemo PORT MAP(
		PS_CLK => ,
		PS_PORB => ,
		PS_SRSTB => ,
		clk_100 => ,
		otg_oc => ,
		DDR_Addr => ,
		DDR_BankAddr => ,
		DDR_CAS_n => ,
		DDR_CKE => ,
		DDR_CS_n => ,
		DDR_Clk => ,
		DDR_Clk_n => ,
		DDR_DM => ,
		DDR_DQ => ,
		DDR_DQS => ,
		DDR_DQS_n => ,
		DDR_DRSTB => ,
		DDR_ODT => ,
		DDR_RAS_n => ,
		DDR_VRN => ,
		DDR_VRP => ,
		MIO => ,
		PS_GPIO => ,
		DDR_WEB => ,
		GPIO_LED => ,
		vga4_blue => ,
		vga4_green => ,
		vga4_red => ,
		vga_hsync => ,
		vga_vsync => ,
		audio_mclk => ,
		audio_dac => ,
		audio_adc => ,
		audio_bclk => ,
		audio_lrclk => ,
		smb_sclk => ,
		smb_sdata => ,
		smbus_addr => 
	);


