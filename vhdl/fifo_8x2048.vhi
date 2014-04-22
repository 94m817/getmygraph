
-- VHDL Instantiation Created from source file fifo_8x2048.vhd -- 15:16:01 01/31/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT fifo_8x2048
	PORT(
		clk : IN std_logic;
		srst : IN std_logic;
		din : IN std_logic_vector(7 downto 0);
		wr_en : IN std_logic;
		rd_en : IN std_logic;          
		dout : OUT std_logic_vector(7 downto 0);
		full : OUT std_logic;
		empty : OUT std_logic
		);
	END COMPONENT;

	Inst_fifo_8x2048: fifo_8x2048 PORT MAP(
		clk => ,
		srst => ,
		din => ,
		wr_en => ,
		rd_en => ,
		dout => ,
		full => ,
		empty => 
	);


