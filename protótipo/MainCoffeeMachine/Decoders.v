module Decoders(CLK, S0, S1, S2, S3, SR, SP, SN, VL, M, a, b, c, d, e, f, g, h, dig1, dig2, dig3, dig4);
	//CE01: escolha do S0
	//CL02: escolha do S1
	//CC05: escolha do S2
	//CP10: escolha do S3
	//ERSR: erro do sensor SR
	//ERSP: erro do sensor SP
	//ERSN: erro do sensor SN
	//ERDI: erro de validaÃ§Ã£o de valor/dinheiro
	//...: modo de espera
	
	input CLK, S0, S1, S2, S3, SR, SP, SN, VL, M;
	output a, b, c, d, e, f, g, h, dig1, dig2, dig3, dig4;
	
	wire saida1Contador, saida2Contador;
	wire A1, A2, A3, A4, A5, A6, A7, A8,
			B1, B2, B3, B4, B5, B6, B7, B8,
			C1, C2, C3, C4, C5, C6, C7, C8,
			D1, D2, D3, D4, D5, D6, D7, D8,
			E1, E2, E3, E4, E5, E6, E7, E8,
			F1, F2, F3, F4, F5, F6, F7, F8,
			G1, G2, G3, G4, G5, G6, G7, G8;
	
	Contador(CLK, saida1Contador, saida2Contador);
	
	//Determinando as saídas do display de acordo com a interface escolhida
	InterfaceS0 (saida1Contador, saida2Contador, A1, B1, C1, D1, E1, F1, G1, S0, S1, S2, S3, SR, SP, SN, VL);
	InterfaceS1 (saida1Contador, saida2Contador, A2, B2, C2, D2, E2, F2, G2, S0, S1, S2, S3, SR, SP, SN, VL);
	InterfaceS2 (saida1Contador, saida2Contador, A3, B3, C3, D3, E3, F3, G3, S0, S1, S2, S3, SR, SP, SN, VL);
	InterfaceS3 (saida1Contador, saida2Contador, A4, B4, C4, D4, E4, F4, G4, S0, S1, S2, S3, SR, SP, SN, VL);
	InterfaceESR (saida1Contador, saida2Contador, A5, B5, C5, D5, E5, F5, G5, S0, S1, S2, S3, SR, SP, SN, VL);
	InterfaceESP (saida1Contador, saida2Contador, A6, B6, C6, D6, E6, F6, G6, S0, S1, S2, S3, SR, SP, SN, VL);
	InterfaceESN (saida1Contador, saida2Contador, A7, B7, C7, D7, E7, F7, G7, S0, S1, S2, S3, SR, SP, SN, VL);
	InterfaceERDI (saida1Contador, saida2Contador, A8, B8, C8, D8, E8, F8, G8, S0, S1, S2, S3, SR, SP, SN, VL);
	
	//Escolha do dígito do display
	and(dig1, ~saida1Contador, ~saida2Contador);
	and(dig2, ~saida1Contador, saida2Contador);
	and(dig3, saida1Contador, ~saida2Contador);
	and(dig4, saida1Contador, saida2Contador);
	
	//Portas nor porque os leds do display de 7 segmentos são acionados em nível lógico baixo
	nor (a, A1, A2, A3, A4, A5, A6, A7, A8);
	nor (b, B1, B2, B3, B4, B5, B6, B7, B8);
	nor (c, C1, C2, C3, C4, C5, C6, C7, C8);
	nor (d, D1, D2, D3, D4, D5, D6, D7, D8);
	nor (e, E1, E2, E3, E4, E5, E6, E7, E8);
	nor (f, F1, F2, F3, F4, F5, F6, F7, F8);
	nor (g, G1, G2, G3, G4, G5, G6, G7, G8);
	
	buf (h, M);
	
	
endmodule