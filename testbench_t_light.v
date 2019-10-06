module testbench_t_light;
wire [1:0] highway, cross_road;
reg x, rst ,clk;
traffic_light u4(x, rst, clk, highway, cross_road);
initial
$monitor($time, "x= %b, rst= %b, clk= %b, highway= %b, cross_road= %b", x, rst, clk, highway, cross_road);
initial  	//initial
begin		//clk =1'b0;
clk = 1'b0; 	//always #5 clk= ~clk;
forever #5 clk= ~clk;
end
initial
begin
x= 1'b0;
#10 x= 1'b1;
#80 x= 1'b0;
#50 $stop;
end
initial 
begin
rst= 1'b1;
#10 rst = 1'b0;
end
endmodule







