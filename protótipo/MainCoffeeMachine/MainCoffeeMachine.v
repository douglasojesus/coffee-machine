module MainCoffeeMachine(CLK, SR, SP, SN, A, VL, B0, B1, 
E0, E1, E2, E3, S0, S1, S2, S3, P, AQ, PP, M, a, b, c, d, e, f, g, h);

	//////////////////////////////HEAD
	input CLK, SR, SP, SN, A, VL, B0, B1;
	output a, b, c, d, e, f, g, h;
	output E0, E1, E2, E3, S0, S1, S2, S3, P, AQ, PP, M;
	//////////////////////////////HEAD

	//////////////////////////////BODY
	MefCoffeeMachine INST(CLK, SR, SP, SN, A, VL, B0, B1, 
				E0, E1, E2, E3, S0, S1, S2, S3, P, AQ, PP, M);
	Decoders INST2(CLK, S0, S1, S2, S3, SR, SP, SN, VL, M, a, b, c, d, e, f, g, h);
	//////////////////////////////BODY
	
	
endmodule