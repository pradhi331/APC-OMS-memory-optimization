module test_addmapping_oms;
 reg x4,x3,x2,x1,x0;
 wire [3:0] d;
 
 address_mapping_oms add_map(x4,x3,x2,x1,x0,d);
 
 initial 
 begin 
  x4=1'b0;x3=1'b1;x2=0'b0;x1=1'b0;x0=1'b0;
  #10 x4=1'b0;x3=1'b1;x2=1'b1;x1=1'b0;x0=1'b0;
  #10 x4=1'b0;x3=1'b0;x2=1'b1;x1=1'b1;x0=1'b0;
  #10 $finish;
 end 
endmodule 
 