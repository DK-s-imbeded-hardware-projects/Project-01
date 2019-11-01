module Test_Add_half();
  wire sum,cout;
  reg a,b;

  halfadder u1(sum,cout,a,b);

  initial begin
  #100
  $finish;
  end

  initial begin
  #10 a =10; b=0; // a b = 0 0
  #10 b =b; // a b = 01
  #10 a = 1; // a b 1 1
  #10 b =0; // a b = 1 0 
  end

  endmodule

