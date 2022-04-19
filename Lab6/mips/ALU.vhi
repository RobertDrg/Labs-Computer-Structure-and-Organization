
-- VHDL Instantiation Created from source file ALU.vhd -- 23:00:46 04/11/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		RdData1 : IN std_logic_vector(31 downto 0);
		RdData2 : IN std_logic_vector(31 downto 0);
		FAddr : IN std_logic_vector(15 downto 0);
		ALUSrc : IN std_logic;
		ALUOP : IN std_logic_vector(1 downto 0);          
		Y : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		RdData1 => ,
		RdData2 => ,
		FAddr => ,
		ALUSrc => ,
		ALUOP => ,
		Y => 
	);


