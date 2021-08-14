module test_shifter_oms;
 reg [8:0] lut_product;
 reg s1,s0;
 wire [8:0] shift_product;
 
 shifter_oms shift_o(lut_product,s1,s0,shift_product);
 
 initial 
 begin 
 lut_product=9'b000000101; s1=1'b1;s0=1'b1;
 #10 lut_product=9'b000000100; s1=1'b1;s0=1'b0;
 #10 $finish;
 end 
endmodule  