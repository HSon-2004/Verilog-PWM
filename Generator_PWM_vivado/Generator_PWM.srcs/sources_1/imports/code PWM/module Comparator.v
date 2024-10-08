module Comparator (
    input reset,
    input [7:0] modulating_signal,
    input [7:0] sawtooth_signal,
    output reg pwm_output
);

always @(sawtooth_signal) begin
        if(modulating_signal>sawtooth_signal) begin
            pwm_output<=1;
        end
        else begin
            pwm_output<=0;
        end
    end
    
endmodule