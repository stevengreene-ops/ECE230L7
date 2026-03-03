
module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0] sum
);

    wire [3:0] carries;
    wire [3:0] intersum;
    wire [3:0] realcarries;
    
    //First addition
    full_adder one(
        .A(A[0]),
        .B(B[0]),
        .Y(intersum[0]),
        .Cin(1'b0), //Fix to zero
        .Cout(carries[0])
     );
     
     full_adder two(
        .A(A[1]),
        .B(B[1]),
        .Y(intersum[1]),
        .Cin(carries[0]),
        .Cout(carries[1])
     );
     
     full_adder three(
        .A(A[2]), 
        .B(B[2]), 
        .Y(intersum[2]), 
        .Cin(carries[1]), 
        .Cout(carries[2]) 
     );
     
     full_adder four(
        .A(A[3]), 
        .B(B[3]), 
        .Y(intersum[3]), 
        .Cin(carries[2]), 
        .Cout(carries[3]) 
     );
     
     full_adder realone(
        .A(intersum[0]),
        .B(1'b0),
        .Y(sum[0]),
        .Cin(carries[3]),
        .Cout(realcarries[0])
     );
     
     full_adder realtwo(
        .A(intersum[1]),
        .B(1'b0),
        .Y(sum[1]),
        .Cin(realcarries[0]),
        .Cout(realcarries[1])
     );

     full_adder realthree(
        .A(intersum[2]),
        .B(1'b0),
        .Y(sum[2]),
        .Cin(realcarries[1]),
        .Cout(realcarries[2])
     );
     
     full_adder realfour(
        .A(intersum[3]),
        .B(1'b0),
        .Y(sum[3]),
        .Cin(realcarries[2])
     );
            
    
endmodule 