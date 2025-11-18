module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire[7:0] a,b,c;
    my_dff8 d1(clk,d,a);
    my_dff8 d2(clk,a,b);
    my_dff8 d3(clk,b,c);
    
    always@(*)begin
        case(sel)
            2'd0:q=d;
            2'd1:q=a;
            2'd2:q=b;
            2'd3:q=c;
        endcase
    end
endmodule
