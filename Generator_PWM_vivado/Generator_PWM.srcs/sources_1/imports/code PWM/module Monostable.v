module Monostable (
  input clk,
  input reset,
  input pwm_input,
  output reg ppm_output
);

reg [31:0] pulse_duration;
reg counter;

parameter PULSE_DURATION =10;


always @(negedge pwm_input) begin
    if(clk==1) begin
    ppm_output=1;
    #PULSE_DURATION ppm_output=0;
    end
    else begin
        ppm_output<=0;
    end
end
always @( clk==0 ) begin
     ppm_output<=0;
    end
endmodule
