module Generator_PWM (
    input clk,
    input reset,
    input [7:0] signal_in,
    input [7:0] freq,
    output  ppm_output,
    output pwm_output,
    output [7:0] sawtooth_output
);
wire [7:0] modulating_signal_out;

Modulating M(clk,reset,signal_in,modulating_signal_out[7:0]);
Sawtooth_generator S(clk,reset,freq,sawtooth_output[7:0]);
Comparator C(reset,modulating_signal_out,sawtooth_output,pwm_output);
Monostable Mn(clk,reset,pwm_output,ppm_output);

endmodule