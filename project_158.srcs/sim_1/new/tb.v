module tb;
reg clk;
reg[7:0] light_sensor;
reg [7:0]threshold;
wire light_controller;

light_controller uut(clk,light_sensor,threshold,light_controller);

initial begin
    clk=0;
    forever #5 clk = ~clk;
end

initial begin
 light_sensor=100;
 threshold=50;
  #20
 $display("Time:%0t,light_sensor:%d, threshold:%d , light_controller:%d",$time,light_sensor,threshold,light_controller );
 light_sensor=25;
  #20
$display("Time:%0t,light_sensor:%d, threshold:%d , light_controller:%d",$time,light_sensor,threshold,light_controller );
 light_sensor=90;
  #20
$display("Time:%0t,light_sensor:%d, threshold:%d , light_controller:%d",$time,light_sensor,threshold,light_controller );
$finish;
end
endmodule
