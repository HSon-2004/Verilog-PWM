module Modulating (
    input clk,
    input reset,
    input [7:0] modulating_signal_in,
    output reg [7:0] modulating_signal_out
);

always @(posedge clk, posedge reset) begin
    if(reset) begin
        modulating_signal_out<=0;
    end
    else begin
        modulating_signal_out<=modulating_signal_in;
    end
end

endmodule
