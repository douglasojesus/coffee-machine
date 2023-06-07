module Decoders(CLK, S0, S1, S2, S3, SR, SP, SN, VL, M, a, b, c, d, e, f, g, h);
	//CE01: escolha do S0
	//CL02: escolha do S1
	//CC05: escolha do S2
	//CP10: escolha do S3
	//ERSR: erro do sensor SR
	//ERSP: erro do sensor SP
	//ERSN: erro do sensor SN
	//ERDI: erro de validação de valor/dinheiro
	//...: modo de espera
	
	input CLK, S0, S1, S2, S3, SR, SP, SN, VL, M;
	output a, b, c, d, e, f, g, h;
	
	wire saida1Contador, saida2Contador;
	wire A1, A2, A3, A4, A5, A6, A7, A8,
			B1, B2, B3, B4, B5, B6, B7, B8,
			C1, C2, C3, C4, C5, C6, C7, C8,
			D1, D2, D3, D4, D5, D6, D7, D8,
			E1, E2, E3, E4, E5, E6, E7, E8,
			F1, F2, F3, F4, F5, F6, F7, F8,
			G1, G2, G3, G4, G5, G6, G7, G7
	
	Contador(CLK, saida1Contador, saida2Contador);
	
	InterfaceS0 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	InterfaceS1 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	InterfaceS2 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	InterfaceS3 (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	InterfaceESR (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	InterfaceESP (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	InterfaceESN (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	InterfaceERDI (saida1Contador, saida2Contador, a, b, c, d, e, f, g);
	
	
	
endmodule