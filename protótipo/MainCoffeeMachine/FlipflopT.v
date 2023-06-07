module FlipflopT(clear, CLK, T, Q);

  input clear, CLK, T;
  output reg Q;

  always @(posedge CLK) begin
    if (clear) begin
      Q <= 0;
    end else if (T) begin
      Q <= ~Q;
    end
  end

endmodule