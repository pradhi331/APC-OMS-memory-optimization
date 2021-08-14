module test_mult_apc_oms;
 reg [4:0] x,a; 
 reg clear;
 wire [9:0] product;
 
 mem_mult_apc_oms m1(x,clear,a,product);
 
 initial 
 begin
 clear=1;
 #2 x=5'b00001;a=5'b01101;clear=1'b0;
 #10 x=5'b01000;a=5'b00101;
 #10 x=5'b01100;a=5'b00100;
 #10 x=5'b00110;a=5'b10111;
 #5 $finish ;
 end
endmodule 