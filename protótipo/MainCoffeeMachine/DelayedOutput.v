module DelayedOutput (
  input wire clk,
  input wire value_in,
  output wire value_out
);
  reg [31:0] counter;
  reg [31:0] delay;
  reg value_delayed;
  reg value_stored;
  wire value_changed;

  always @(posedge clk) begin
    if (value_in != value_stored) begin
      counter <= 0;
      value_stored <= value_in;
      if (value_in) begin
        delay <= 2000000; // Atraso de 2 segundos (assumindo 1 MHz de frequência de clock)
      end
    end else begin
      if (value_in && counter < delay) begin
        counter <= counter + 1;
      end else begin
        value_delayed <= value_stored;
      end
    end
  end

  assign value_changed = (value_in != value_stored);
  assign value_out = (value_changed) ? value_delayed : value_stored;

endmodule