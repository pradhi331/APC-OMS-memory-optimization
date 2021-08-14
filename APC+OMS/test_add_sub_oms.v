module test_add_sub_oms;
 reg [8:0] shift_product;
 reg [4:0] a;
 reg x4;
 wire [9:0] product;
 
 
 adder_sub_oms ad_su_om(x4,shift_product,a,product);
 
 initial 
 begin
 shift_product=9'b000101000;a=5'b00101;x4=1'b0;
 #10 shift_product=9'b000010000;a=5'b00100;x4=1'b0;
 end
endmodule  