module light_controller(
input clk,
input[7:0] light_sensor,
input [7:0]threshold,
output reg light_controller
);

initial begin
light_controller=0;
end

always @(posedge clk)begin
if( light_sensor>threshold)
   light_controller=0;
else
     light_controller=1;
       
end
endmodule