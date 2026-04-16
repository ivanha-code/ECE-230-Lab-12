module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
); 
    
     binary_c test(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .State(led[9:7])
    );
    
      
    one_hot test2(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .Astate(led[2]),
        .Bstate(led[3]),
        .Cstate(led[4]),
        .Dstate(led[5]),
        .Estate(led[6])
   );     
        
endmodule