`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Final Year Project
// Student: Prabhat Atha
// 
// Create Date: 06.11.2022 17:21:26
// Design Name: 
// Module Name: instruction_memory
// Project Name: 32_bit_microprocessor
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


module instruction_memory(Address, Instruction); 

    input       [31:0]  Address;        // Input Address 

    output   [31:0]  Instruction;    // Instruction at memory location Address
    
    reg [31:0] mem[0:1023];


    


	initial
	begin
		$readmemh("instruction.txt",mem);
	end

	assign Instruction = mem[Address];	
	

endmodule
