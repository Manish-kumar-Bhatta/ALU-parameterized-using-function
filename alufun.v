module alu(a,b,oper,y);
	parameter ADD=3'b000;
	parameter SUB=3'b001;
	parameter MUL=3'b010;
	parameter DIV=3'b011;
	parameter POW=3'b100;
	parameter MOD=3'b101;
	parameter L_S=3'b110;
	parameter R_S=3'b111;

	input [31:0]a,b;
	input [2:0]oper;
	output reg [31:0]y;

	function integer alu_f(input integer a,b,input [2:0]oper);
		case(oper)
			ADD:begin
				alu_f=a+b;
			end
			SUB:begin
				alu_f=a-b;
			end
			MUL:begin
				alu_f=a*b;
			end
			DIV:begin
				alu_f=a/b;
			end
			POW:begin
				alu_f=a**b;
			end
			MOD:begin
				alu_f=a%b;
			end
			L_S:begin
				alu_f=a<<2;
			end
			R_S:begin
				alu_f=a>>2;
			end
			default:begin
				$display("no operation");
			end
		endcase
	endfunction

	always@(*) begin
		y=alu_f(a,b,oper);
	end
endmodule
