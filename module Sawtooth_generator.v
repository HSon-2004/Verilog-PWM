module Sawtooth_generator (
    input clk,
    input reset,
    input [7:0] freq,
    output reg [7:0] sawtooth_output
);

reg [7:0] counter;
always @(posedge clk, posedge reset) begin
    if(reset) begin
        counter<=0;
    end
    else begin
        if(counter==(freq-1)) begin
            counter<=0;
        end
        else begin
            counter<=counter+1;
        end
    end
    sawtooth_output<=counter[7:0];
end
  
endmodule