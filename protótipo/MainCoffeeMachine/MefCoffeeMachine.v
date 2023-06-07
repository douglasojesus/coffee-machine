module MefCoffeeMachine(CLK, SR, SP, SN, A, VL, B0, B1, 
E0, E1, E2, E3, S0, S1, S2, S3, P, AQ, PP, M);
	//////////////////////////////HEAD
	input CLK, SR, SP, SN, A, VL, B0, B1;
	output E0, E1, E2, E3, S0, S1, S2, S3, P, AQ, PP, M;
	
	//Registrador de estado
	wire Q3, Q2, Q1, Q0;
	
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, 
	w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36,
	w37, w38, w39, w40, w41;
	
	wire s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18,
	s19, s20, s21, s22, s23, s24, s25, s26;
	//////////////////////////////HEAD
	
	//////////////////////////////BODY
	//Inicializaçăo da máquina
	
						
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
	FFD D3(CLK, w7, Q3);
	FFD D2(CLK, w12, Q2);
	FFD D1(CLK, w27, Q1);
	FFD D0(CLK, w41, Q0);
	
	//Estado próximo
	/*always @ (posedge CLK) begin
		Q3 <= w7;
		Q2 <= w12;
		Q1 <= w27;
		Q0 <= w41;
	end*/

	and (E0, ~Q3, ~Q2, ~Q1, ~SR); //E0
	
	or (s2, SR, Q1);
	and (E1, s2, ~Q3, ~Q2, ~Q0, ~SP); //E1
	and (s4, Q1, Q0);
	and (s5, ~Q1, ~Q0, SR, SP);
	or (s6, s5, s4);
	and (E2, s6, ~Q3, ~Q2, ~SN); //E2	
			
	and (s8, SR, SP, SN, A);
	or (s9, s8, Q2);
	and (E3, s9, ~Q3, ~Q1, ~Q0, ~VL); //E3	
				
	and (s11, Q2, Q0);
	and (s12, ~Q2, ~Q0, SR, SP, SN, A, VL, ~B0, ~B1);
	or (s13, s11, s12);
	and (S0, s13, ~Q3, ~Q1); //S0	
				
	and (s15, Q2, Q1);
	and (s16, ~Q2, ~Q1, SR, SP, SN, A, VL, ~B0, B1);
	or (s17, s15, s16);
	and (S1, s17, ~Q3, ~Q0); //S1	
				
	and (s19, ~Q3, Q2, Q1, Q0);
	and (s20, ~Q3, ~Q2, ~Q1, ~Q0, SR, SP, SN, A, VL, B0, ~B1);
	or (S2, s20, s19); //S2	
				
	and (s22, SR, SP, SN, A, VL, B0, B1);
	or (s23, s22, Q3);
	and (S3, s23, ~Q2, ~Q1, ~Q0); //S3
	
	and (s25, ~Q1, Q0);
	and (s26, Q1, ~Q0);
	or (s27, s25, s26);
	and (s28, s27, SR, SP, SN);
	and (s29, Q1, Q0);
	and (s30, ~Q1, ~Q0);
	or (s31, s28, s29, s30);
	and (s32, s31, Q3, ~Q2);
	or (s33, Q0, Q1);
	and (s34, s33, ~Q3, Q2);
	or (P, s34, s32); //P
	
	and (s36, Q3, ~Q2, Q1, Q0);
	and (s37, s27, Q3, ~Q2, SR, SP, SN); 
	or (AQ, s37, s36); //AQ		
		
	and (s39, SR, SP, SN);
	or (s40, s39, Q0);
	and (PP, s40, Q3, ~Q2, Q1); //PP
	
	and (s42, Q3, ~Q2, Q1, Q0); 
	and (s43, SP, SR, ~SN);
	and (s44, SP, ~SR, SN);
	and (s45, ~SP, SR, SN);	
	or (s46, s43, s44, s45);
	and (s47, s46, Q3, ~Q2, Q1, ~Q0); 
	and (s48, s46, Q3, ~Q2, ~Q1, Q0); 
	and (s49, ~Q3, Q2, ~Q1, ~Q0, VL); 
	and (s50, ~Q0, SP);
	and (s51, Q0, SN);
	or (s52, s50, s51);
	and (s53, s52, ~Q3, ~Q2, Q1); 
	and (s54, SP, SN, ~A);
	or (s55, s54, Q0);
	and (s56, s55, ~Q3, ~Q2, ~Q1, SR); 
	or (M, s42, s47, s48, s49, s53, s56); //M
	
	//////////////////////////////BODY
	

endmodule