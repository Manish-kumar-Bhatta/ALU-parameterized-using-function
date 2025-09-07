`include"alufun.v"
module tb;
	reg [31:0]a,b;
	reg [2:0]oper;
	wire [31:0]y;

	alu dut (a,b,oper,y);

	initial begin
		a=10;
		b=2;
		repeat(10)begin
			oper=$random;
			#1;
			$display("a=%0d,b=%0d,oper=%b,y=%0d",a,b,oper,y);
		end
	end
endmodule
//# a=10,b=2,oper=100,y=100
//# a=10,b=2,oper=001,y=8
//# a=10,b=2,oper=001,y=8
//# a=10,b=2,oper=011,y=5
//# a=10,b=2,oper=101,y=0
//# a=10,b=2,oper=101,y=0
//# a=10,b=2,oper=101,y=0
//# a=10,b=2,oper=010,y=20
//# a=10,b=2,oper=001,y=8
//# a=10,b=2,oper=101,y=0
