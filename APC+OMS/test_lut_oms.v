module test_lut_oms;
 reg [8:0] w;
 reg [4:0] a;
 reg reset;
 wire [8:0] lut_product;


lut_oms lut_o(w,a,reset,lut_product);

initial 
begin 
 w=9'b000000001;a=00101;reset=1'b0;
 #10 w=9'b000000001;a=00100;reset=1'b0;
 end 
endmodule  