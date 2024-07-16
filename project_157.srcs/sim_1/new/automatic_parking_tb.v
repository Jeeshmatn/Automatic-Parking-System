module automatic_parking_tb;
reg clk,rst,car_entry,car_exit;
reg [7:0] capacity;
reg request_entry;
wire [7:0] space_available;
//wire [7:0] space_available_g;
wire full;

wire gate_open;

initial begin
    clk=0;
    forever #5 clk=~clk;
    
end

parking_lot_manager uut(.clk(clk),.rst(rst),.car_entry(car_entry),.car_exit(car_exit),.capacity(capacity),.space_available(space_available),.full(full));
Entry_Gate_Controller dut(clk,rst,request_entry,space_available,full,gate_open);

initial begin
   
    $monitor("Time:%0t,car_entry:%d, capacity:%d,space_available:%d,full:%d  " , $time,car_entry,capacity,space_available,full);
    $monitor("Time:%0t,request_entry:%d,gate_open:%d,full:%d  " , $time,request_entry,gate_open,full);

    rst=0;
    capacity=8;
    car_entry=1;
    car_exit=0;
    
    
    request_entry = 0;
    #50
//    $monitor("Time:0t,request_entry:%d,gate_open:%d,full:%d  " , $time,request_entry,gate_open,full);
    request_entry = 1;
    
    #100
    
    $finish;    
end

//always@(posedge clk)$display("Time:%0t,car_entry:%d, capacity:%d,space_available:%d,full:%d  " , $time,car_entry,capacity,space_available,full);
//always@(posedge clk)$display("Time:%0t,request_entry:%d,space_available:%d,gate_open:%d,full:%d  " , $time,request_entry,space_available,gate_open,full);


endmodule
