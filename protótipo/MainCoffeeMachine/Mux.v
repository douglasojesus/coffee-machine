module Mux(CLK, saida1, saida2, saida3, saida4);

	input CLK;
	output saida1, saida2, saida3, saida4;
	
	wire saida1Contador, saida2Contador;
	
	contador inst1(CLK, saida1Contador, saida2Contador);
	
	and(saida1, ~saida1Contador, ~saida2Contador);
	and(saida2, ~saida1Contador, saida2Contador);
	and(saida3, saida1Contador, ~saida2Contador);
	and(saida4, saida1Contador, saida2Contador);
	
	
endmodule