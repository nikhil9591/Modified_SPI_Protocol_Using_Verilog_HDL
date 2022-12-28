`timescale 1ns / 1ps
module Demultiplexer_1_to_16_assign(output [15:0] Y, input [3:0] A, input din);
assign Y[0] = din & (~A[0]) & (~A[1])&(~A[2]) & (~A[3]);
assign Y[1] = din & (~A[0]) & (~A[1])&(~A[2]) & (A[3]);
assign Y[2] = din & (~A[0]) & (~A[1])&(A[2]) & (~A[3]);
assign Y[3] = din & (~A[0]) & (~A[1])&(A[2]) & (A[3]);
assign Y[4] = din & (~A[0]) & (A[1])&(~A[2]) & (~A[3]);
assign Y[5] = din & (~A[0]) & (A[1])&(~A[2]) & (A[3]);
assign Y[6] = din & (~A[0]) & (A[1])&(A[2]) & (~A[3]);
assign Y[7] = din & (~A[0]) & (A[1])&(A[2]) & (A[3]);
assign Y[8] = din & (A[0]) & (~A[1])&(~A[2]) & (~A[3]);
assign Y[9] = din & (A[0]) & (~A[1])&(~A[2]) & (A[3]);
assign Y[10] = din & (A[0]) & (~A[1])&(A[2]) & (~A[3]);
assign Y[11] = din &(A[0]) & (~A[1])&(A[2]) & (A[3]);
assign Y[12] = din & (A[0]) & (A[1])&(~A[2]) & (~A[3]);
assign Y[13] = din & (A[0]) & (A[1])&(~A[2]) & (A[3]);
assign Y[14] = din & (A[0]) & (A[1])&(A[2]) & (~A[3]);
assign Y[15] = din & (A[0]) & (A[1])&(A[2]) & (A[3]);
endmodule