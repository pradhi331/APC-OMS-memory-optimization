module decoder4x9(d,clear,w);
 input [3:0] d;
input clear;
 output reg [8:0] w;
 
 
 always @(d,clear)
 begin 
 if (clear==1)
	w=9'b000000000;
 else
 begin
	case(d[2:0])
	3'b000:w=9'b000000001;
	3'b001:w=9'b000000010;
	3'b010:w=9'b000000100;
	3'b011:w=9'b000001000;
	3'b100:w=9'b000010000;
	3'b101:w=9'b000100000;
	3'b110:w=9'b001000000;
	3'b111:w=9'b010000000;
	endcase 
	w[8]= w[0] & d[3];
 end
 end 
endmodule 
	