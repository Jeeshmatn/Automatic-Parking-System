module Entry_Gate_Controller(
input wire clk,
input wire rst,
input wire request_entry,
input wire [7:0] space_available ,
input wire full,
output reg gate_open
    );


always @ (posedge clk or posedge rst)  
    if(rst)
        gate_open=0;
    else begin    
    if(request_entry==1 && !full)
        gate_open=1;
     else
         gate_open=0;  
 end         
endmodule
