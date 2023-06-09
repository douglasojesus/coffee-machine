module decoders(CLK, S0, S1, S2, S3, SR, SP, SN, VL, M, a, b, c, d, e, f, g, h);
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
	
	contador(CLK, saida1Contador, saida2Contador);
	
	interfaceS0 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceS1 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceS2 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceS3 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceESR (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceESP (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceESN (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	interfaceERDI (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	


endmodule