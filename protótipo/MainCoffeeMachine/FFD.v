module FFD(CLK, D, Q);

	/*Flipflop simples do tipo D. A entrada é encaminhada para a saída após um pulso de subida do clock.*/
	
	output reg Q;
	input CLK, D;
	
	always @(posedge CLK) begin
		Q = D;
	end


endmodule