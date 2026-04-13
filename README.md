# 4-bit Carry Lookahead Adder (CLA) in Verilog

## Overview
This project implements a 4-bit Carry Lookahead Adder (CLA) in Verilog. It performs fast binary addition by computing carry signals in advance using propagate and generate logic.

## Inputs
- A [3:0] : 4-bit input  
- B [3:0] : 4-bit input  
- Cin : Carry input  

## Outputs
- Sum [3:0] : 4-bit result  
- Cout : Carry output  

## Working
- Propagate (P) = A XOR B  
- Generate (G) = A AND B  
- Carry signals are computed using lookahead logic  
- Sum is calculated using XOR with corresponding carry  

## Testbench
- Instantiates the CLA module  
- Uses a task to apply test inputs  
- Displays output using $display  
- Includes multiple test cases including overflow  

## Simulation
- Timescale: 1ns / 1ps  
- Delay of #10 between test cases  
- Outputs printed in binary  

## Files
- cla_4bit.v  
- cla_4bit_tb.v  

## Result
The CLA correctly computes sum and carry for all tested input combinations.
