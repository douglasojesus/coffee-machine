module MainCoffeeMachine(CLK, SR, SP, SN, A, V0, V1, B0, B1,
P, AQ, PP, a, b, c, d, e, f, g, h, dig1, dig2, dig3, dig4);

	/*P=LED9
	AQ=LED8
	PP=LED-RGB VERDE
	M=SEG-P (TODOS OS DIGITOS)*/

	//////////////////////////////HEAD
	input CLK;
	input SR, SP, SN, V0, V1, B0, B1; //CHAVE
	input A; //BOTÃO
	output a, b, c, d, e, f, g, h, dig1, dig2, dig3, dig4; //DISPLAY DE SETE SEGMENTOS
	output P, AQ; //LEDS
	output PP; //LED INDIVIDUAL
	wire VL, E0, E1, E2, E3, S0, S1, S2, S3, M;
	//////////////////////////////HEAD

	//////////////////////////////BODY
	//Determinação do VL: validar V0, V1 e B0 e B1 se são iguais.
	and (val1, ~V0, ~B0, ~V1, ~B1);
	and (val2, ~V0, ~B0, V1, B1);
	and (val3, V0, B0, ~V1, ~B1);
	and (val4, V0, B0, V1, B1);
	or (VL, val1, val2, val3, val4);
	
	MefCoffeeMachine INST(CLK, SR, SP, SN, A, VL, B0, B1, 
				E0, E1, E2, E3, S0, S1, S2, S3, P, AQ, PP, M);
				
	Decoders INST2(CLK, S0, S1, S2, S3, SR, SP, SN, VL, M, a, b, c, d, e, f, g, h, dig1, dig2, dig3, dig4);
	//////////////////////////////BODY
	
	
endmodule