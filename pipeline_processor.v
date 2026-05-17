`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2026 23:09:28
// Design Name: 
// Module Name: pipeline_processor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pipeline_processor(
    input clk,
    output [7:0] final_result,
    output [7:0] pipeline_data
);

reg [7:0] instruction_memory [0:3];

reg [7:0] IF_ID;
reg [7:0] ID_EX;
reg [7:0] EX_WB;

reg [7:0] regfile [0:3];

reg [1:0] opcode;
reg [7:0] result;

integer pc;

assign final_result = regfile[2];
assign pipeline_data = EX_WB;

initial begin

    IF_ID = 0;
    ID_EX = 0;
    EX_WB = 0;
    opcode = 0;
    result = 0;

    pc = 0;

    instruction_memory[0] = 8'b00000011;
    instruction_memory[1] = 8'b01000010;
    instruction_memory[2] = 8'b10000101;

    regfile[0] = 10;
    regfile[1] = 5;
    regfile[2] = 0;
    regfile[3] = 0;

end

always @(posedge clk)
begin

    IF_ID <= instruction_memory[pc];

    if(pc < 2)
        pc <= pc + 1;

    ID_EX <= IF_ID;
    opcode <= IF_ID[7:6];

    case(opcode)

        2'b00:
            result <= regfile[0] + regfile[1];

        2'b01:
            result <= regfile[0] - regfile[1];

        2'b10:
            result <= 8'd25;

        default:
            result <= 0;

    endcase

    EX_WB <= result;

    regfile[2] <= EX_WB;

end

endmodule
