module alu(
           input [7:0] A,B,  // ALU 8-bit Inputs                 
           input [3:0] ALU_Sel,// ALU Selection
           output [7:0] ALU_Out, // ALU 8-bit Output
           output CarryOut // Carry Out Flag
    );
    reg [7:0] ALU_Result;
    wire [8:0] tmp;
    assign ALU_Out = ALU_Result; // ALU out
    assign tmp = {1'b0,A} + {1'b0,B};
    assign CarryOut = tmp[4]; // Carryout flag
    always @(*)
    begin
        case(ALU_Sel)
          4'b0000:ALU_Result = A + B ; 
          4'b0001:ALU_Result = A - B ;
          4'b0010:ALU_Result = A * B;
          4'b0011:ALU_Result = A/B;
          4'b0100:ALU_Result = A<<1;
          4'b0101:ALU_Result = A>>1;
          4'b0110:ALU_Result = {A[6:0],A[7]};
          4'b0111:ALU_Result = {A[0],A[7:1]};
          4'b1000:ALU_Result = A & B;
          4'b1001: ALU_Result = A | B;
          4'b1010:ALU_Result = A ^ B;
          4'b1011: ALU_Result = ~(A | B);
          4'b1100:ALU_Result = ~(A & B);
          4'b1101:ALU_Result = ~(A ^ B);
          4'b1110:ALU_Result = (A>B)?8'd1:8'd0 ;
          4'b1111:ALU_Result = (A==B)?8'd1:8'd0 ;
         default: ALU_Result = A + B ; 
        endcase
    end

endmodule
