module parking_lot_manager(
input wire clk,
input wire rst,
input wire car_entry,
input wire car_exit,
input wire [7:0]capacity,
output reg [7:0] space_available,
output reg full
);


initial begin
    assign space_available = capacity;
    full = 0;
end

always @(posedge clk or posedge rst)begin
 
    if(rst)
           assign space_available = capacity; 
     else  
         if(!space_available)  
            full=1;
          else
            full=0;
//         full = (space_available == 0) ? 1 : 0;
          
         //space_available = (car_entry && !full) ? space_available-1 : space_available;
         
         if(car_entry && ~full)begin
          assign space_available = space_available-1;
         end
         if(car_exit)begin
            assign space_available=space_available+1;
         end
                            
end
endmodule