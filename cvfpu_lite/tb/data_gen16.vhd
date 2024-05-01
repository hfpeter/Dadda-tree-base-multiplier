library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
library std;
use std.textio.all;
entity data_gen16 is  
  port (
    CLK   : in std_logic;
    RST_n : in std_logic;
    D0    : out std_logic_vector(15 downto 0);
    D1    : out std_logic_vector(15 downto 0);
    D2    : out std_logic_vector(15 downto 0);
    res : in std_logic_vector(15 downto 0);
    valid: in std_logic;
    VOUT  : out std_logic;
    END_SIM : out std_logic);
end entity data_gen16;

architecture beh of data_gen16 is

  constant tco : time := 1 ns;

type tval_t is array (0 to 9) of std_logic_vector(15 downto 0);
signal cnt : integer := 0;
signal cnt_in : integer := 0;
signal sEnd_sim : std_logic;

signal v_flag:std_logic_vector (1 downto 0);
 constant ctvalA : tval_t := (
  "0000000111101010",
  "1111000000110110",
  "1101011010101010",
  "1011100111000101",
  "1011111001101100",
  "0000010100111110",
  "0110100001011010",
  "0100111100100100",
  "0111101101011011",
  "1101100111000010"
 	);
  constant ctvalB : tval_t := (
  "0111101001111001",
  "1000001101011000",
  "0001011100000011",
  "0011010101010100",
  "0011010101110001",
  "0110111001100110",
  "1011110000000001",
  "1100011100001111",
  "0000101111100000",
  "0101000100000000"
    );
constant result : tval_t := (
  "0011111000110010",
  "0011011100001010",
  "1011000111010111",
  "1011001110101111",
  "1011100001011110",
  "0011100000110001",
  "1110100001011011",
  "1101101001001101",
  "0100101100111110",
  "1110111100110010"
    );
signal sEnd_sim_pipe : std_logic_vector(5 downto 0);
begin  -- architecture beh
process (CLK, RST_n) is
  file res_fp : text open WRITE_MODE is "./results.txt";    
  variable x : integer;     
  variable line_out : line;  
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      cnt <= 0;  
      D0 <= (others => '0');
      D1 <= (others => '0');
      D2 <= (others => '0');
      VOUT <= '0';
      sEnd_sim <= '0';
	  v_flag<="00";
	  VOUT <= '1' after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      if ( valid='0') then  
	    v_flag<=v_flag or "01";
	  end if;
      if ( valid='1') then  
	    v_flag<=v_flag or "10";
	  end  if;
	  
      if (v_flag="11") then 
					v_flag<= "00";
					write(line_out, res);
					writeline(res_fp, line_out);
					if(result(cnt_in)/=res) then 
					assert conv_integer(unsigned(res)) = x report "Results are different: index=" & integer'image(cnt_in)
					 severity error;     
					end if; 
					cnt_in<=cnt_in+1;

				  
				  if (cnt < 10) then
					cnt <= cnt + 1 after tco;
					D0 <= ctvalA(cnt) after tco;
					D1 <= ctvalB(cnt) after tco;
                    VOUT <= '1' after tco;
					sEnd_sim <= '0' after tco;  
				  else
					VOUT <= '0' after tco;
					sEnd_sim <= '1' after tco;
				  end if;
    else 
	VOUT <= '0' after tco;
	  
    end if;
    end if;
  end process;

  process (CLK, RST_n) is
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      sEnd_sim_pipe <= (others => '0');
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      sEnd_sim_pipe(0) <= sEnd_sim after tco;
      sEnd_sim_pipe(5 downto 1) <= sEnd_sim_pipe(4 downto 0) after tco;
    end if;
  end process;

  END_SIM <= sEnd_sim_pipe(5);

end beh;