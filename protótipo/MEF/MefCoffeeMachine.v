module MefCoffeeMachine(CLK, SR, SP, SN, A, VL, B0, B1, 
E0, E1, E2, E3, S0, S1, S2, S3, P, AQ, PP, M);
	//////////////////////////////HEAD
	input CLK, SR, SP, SN, A, VL, B0, B1;
	output reg E0, E1, E2, E3, S0, S1, S2, S3, P, AQ, PP, M;
	
	//Registrador de estado
	reg Q3, Q2, Q1, Q0;
	
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, 
	w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36,
	w37, w38, w39, w40, w41;
	//////////////////////////////HEAD
	
	//////////////////////////////BODY
	//Inicialização da máquina
	initial begin
		Q3 <= 0;
		Q2 <= 0;
		Q1 <= 0;
		Q0 <= 0;
	end
						
	or (w1, Q1, Q0);
	and (w2, w1, Q2, ~Q3);
	and (w3, A, VL, B0, B1, ~Q1);
	or (w4, w3, Q3);
	and (w5, w4, SR, SP, SN);
	and (w6, w5, ~Q0, ~Q2);
	or (w7, w6, w2);
	//w7 = Q3
	
	and (w8, Q2, ~VL);
	or (w9, ~B1, ~B0, ~VL);
	and (w10, w9, ~Q2, SR, SP, SN, A);	
	or (w11, w10, w8);
	and (w12, w11, ~Q3, ~Q1, ~Q0);		
	//w12 = Q2		
						
	and (w13, Q1, ~Q0);
	and (w14, ~Q1, Q0);
	or (w15, w13, w14);
	and (w16, Q3, ~Q2, SR, SP, SN, w15);
	and (w17, Q0, ~SN);
	and (w18, ~Q0, ~SP);
	or (w19, w17, w18);
	and (w20, w19, ~Q3, ~Q2, Q1);
	and (w21, ~B0, B1);
	and (w22, B0, ~B1);
	or (w23, w21, w22);
	and (w24, w23, VL, A, SN);
	or (w25, w24, ~SN, ~SP);
	and (w26, w25, SR, ~Q0, ~Q1, ~Q2, ~Q3);
	or (w27, w26, w20, w16);
	//w27 = Q1
								
	and (w28, Q3, ~Q2, Q1, ~Q0, SR, SP, SN);
	and (w29, ~Q1, ~SR);
 	and	(w30, Q1, ~SN);
 	or (w31, w29, w30);
 	and (w32, w31, ~Q3, ~Q2, Q0);
 	and (w33, A, VL, ~B1);
 	or (w34, w33, ~SN);
 	and (w35, w34, SP);
 	or (w36, w35, ~SR);
 	and (w37, w36, ~Q3, ~Q1);
 	and (w38, Q3, Q1, SR, SP, SN);
 	or (w39, w37, w38);
 	and (w40, w39, ~Q2, ~Q0);
 	or (w41, w28, w32, w40);
 	//w41 = Q0	
	
	//Estado próximo
	always @ (posedge CLK) begin
		Q3 <= w7;
		Q2 <= w12;
		Q1 <= w27;
		Q0 <= w41;
	end
	//////////////////////////////BODY
	

endmodule