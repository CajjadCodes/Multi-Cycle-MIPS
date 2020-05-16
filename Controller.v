module Controller (clk, rst, opc, PCWrite, PCWriteCondBeq, PCWriteCondBne, IorD,
		IRWrite, RegDst, JalSig1, JalSig2, MemToReg, MemRead, MemWrite, RegWrite,
		ALUSrcA, ALUSrcB, ALUOp, PCSrc);

input clk;
input rst;
input [5:0] opc;
output PCWrite;
output PCWriteCondBeq;
output PCWriteCondBne;
output IorD;
output IRWrite;
output RegDst;
output JalSig1;
output JalSig2; 
output MemToReg;
output MemRead;
output MemWrite;
output RegWrite;
output ALUSrcA;
output [1:0] ALUSrcB;
output [1:0] ALUOp; 
output [1:0] PCSrc;

	wire RT, addi, andi, lw, sw, j, jal, jr, beq, bne;
	OpcDCD opcDcd(
		.RT(RT),
		.addi(addi),
		.andi(andi),
		.lw(lw),
		.sw(sw),
		.j(j),
		.jal(jal),
		.jr(jr),
		.beq(beq),
		.bne(bne)
		);

endmodule 