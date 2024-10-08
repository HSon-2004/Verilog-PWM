module tb_Generator_PWM ;
reg clk, reset;
reg [7:0] signal_in;
reg [7:0] freq;
wire pwm_output, ppm_output;
wire [7:0] sawtooth_signal;

Generator_PWM Ge(clk,reset,signal_in,freq,ppm_output,pwm_output,sawtooth_signal);
initial begin
    reset=1;clk=0;signal_in=8'd5;freq=8'd10;
    #10 reset=0;
    repeat (50) begin
            #10 clk = ~clk;
        end
    signal_in=8'd9;
    repeat (50) begin
                #10 clk = ~clk;
            end
end
    
endmodule