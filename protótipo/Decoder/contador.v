module contador(CLK, Q1, Q2);
	
  input CLK;	
  output Q1, Q2;
  wire clear;
  
  and(clear, Q1, Q2, Q3);
   
  FlipflopT inst1(clear, CLK, 1, Q1);
  FlipflopT inst2(clear, ~Q1, 1, Q2);
  FlipflopT inst3(clear, ~Q2, 1, Q3);
	
endmodule