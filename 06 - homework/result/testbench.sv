// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module testbench();
  
  reg a1;
  wire y1;
  inverter inv1(a1,y1);
  
  initial begin
    //Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1, testbench);
    
    a1= 1'b1;
    $display ("a=%b",a1);
    
    #1
    $display ("y=%b",y1);
    
    a1= 1'b0;
    $display ("a=%b",a1);
    
    #1
    $display ("y=%b",y1);
  end

endmodule