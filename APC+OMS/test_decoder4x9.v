module test_decoder4x9;
 reg[3:0] d;
 reg clear;
 wire [8:0] w;
 
 decoder4x9 dec(d,clear,w);
 
 initial 
 begin 
 clear=1'b0; d=4'b0000;
 #10 d=4'b0010;
 #10 d=4'b0001;
 #10 d=4'b0011;
 #10 d=4'b1000;
 #10 $finish ;
 end 
endmodule  