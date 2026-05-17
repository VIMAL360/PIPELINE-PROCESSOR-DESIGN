# PIPELINE-PROCESSOR-DESIGN
DESIGNED A 4-STAGE PIPELINED PROCESSOR WITH BASIC INSTRUCTIONS LIKE ADD, SUB, AND LOAD.

COMPANY : CODTECH IT SOLUTIONS

NAME : VIMAL VP

INTERN ID : CTIS7999

DOMAIN : VLSI

DURATION : 4 WEEKS

MENTOR : NEELA SANTHOSH

This repository contains the design and simulation of a simple Pipeline Processor implemented using Verilog HDL. The project was developed to understand the fundamentals of processor architecture, pipelining concepts, synchronous digital circuits, and hardware description language programming. Pipeline processors are widely used in modern CPUs to improve instruction execution speed and overall system performance.

The processor designed in this project demonstrates the basic concept of instruction pipelining using multiple pipeline stages. The design includes pipeline registers representing stages such as Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), Memory Access (MEM), and Write Back (WB). Data moves sequentially from one stage to another on every positive edge of the clock signal.

The project was simulated using Xilinx Vivado, and a separate testbench was written to verify the functionality of the processor pipeline stages. The waveform outputs were analyzed to observe how data propagates through different stages during clock cycles. The project provides practical exposure to Verilog HDL coding, synchronous sequential circuits, clock-driven operation, and pipeline architecture implementation.

This repository mainly contains two Verilog files:

1.pipeline_processor.v – Main pipeline processor module

2.pipeline_processor_tb.v – Testbench for simulation and verification

The pipeline processor demonstrates the following operations:

1.Instruction Fetch

2.Instruction Decode

3.Execute Stage

4.Memory Access

5.Write Back Stage

This project helped in understanding important digital design concepts such as:

1.pipeline architecture

2.processor stage execution

3.synchronous sequential circuits

4.Verilog HDL syntax

5.simulation and debugging using waveforms

The design can serve as a beginner-friendly project for students learning FPGA design, Verilog HDL, computer architecture, and processor design concepts. Since pipelining is an important concept used in modern processors, this project also acts as a foundation for advanced CPU and FPGA-based processor systems.

The project was created purely for educational and learning purposes and can be extended further by adding instruction memory, ALU operations, hazard detection, forwarding units, and complete processor functionality.

OUTPUT:

<img width="1442" height="576" alt="Image" src="https://github.com/user-attachments/assets/b42c41c8-9ff2-4f13-a6ec-8a6183e91944" />
