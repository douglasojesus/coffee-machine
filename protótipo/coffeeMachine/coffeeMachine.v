module coffeeMachine(CLK, S0, S1, S2, S3, SR, SP, SN, VL, M, a, b, c, d, e, f, g, h);
	//CE01: escolha do S0
	//CL02: escolha do S1
	//CC05: escolha do S2
	//CP10: escolha do S3
	//ERSR: erro do sensor SR
	//ERSP: erro do sensor SP
	//ERSN: erro do sensor SN
	//ERDI: erro de valida��o de valor/dinheiro
	//...: modo de espera
	
	input CLK, S0, S1, S2, S3, SR, SP, SN, VL, M;
	output a, b, c, d, e, f, g, h;
	
	wire saida1Contador, saida2Contador;
	wire iS0a, iS0b, iS0c, iS0d, iS0e, iS0f, iS0g,
	iS1a, iS1b, iS1c, iS1d, iS1e, iS1f, iS1g,
	iS2a, iS2b, iS2c, iS2d, iS2e, iS2f, iS2g;
	
	contador(CLK, saida1Contador, saida2Contador);
	

	interfaceS0 inst1(saida1Contador, saida2Contador, iS0a, iS0b, iS0c, iS0d, iS0e, iS0f, iS0g);
	interfaceS1 (saida1Contador, saida2Contador, iS1a, iS1b, iS1c, iS1d, iS1e, iS1f, iS1g);
	
	and (saida, S0
	
	assign a = iS0a;
	assign b = iS0b;
	assign c = iS0c;
	assign d = iS0d;
	assign e = iS0e;
	assign f = iS0f;
	assign g = iS0g;

	
	

	
	/*interfaceS0 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceS1 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceS2 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceS3 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceESR (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceESP (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceESN (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceERDI (saida1Contador, saida2Contador, a, b, c, d, e, f, g);*/

endmodule