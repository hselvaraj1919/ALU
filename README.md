#ARITHMETIC-LOGIC-UNIT(ALU)

*COMPANY*: CODETECH IT SOLUTIONS

*NAME*: H SELVARAJ

*INTERN ID*:CTO4DL1346

 *DOMAIN*: VLSI

 *DURATION*:4 weeks

 *MENTOR*:NEELA SANTOSH

 ##Detailed Summary: ALU Using Verilog
Introduction to ALU
An Arithmetic Logic Unit (ALU) is a critical component of any processor or computational system. It performs arithmetic and logical operations on binary data inputs. Typical operations include addition, subtraction, bitwise AND, OR, XOR, NOT, and comparison operations such as set-less-than (SLT). The ALU does not store data; it processes input data based on control signals and produces output and status flags (like zero, carry, overflow).
In modern computing systems, ALUs are implemented using hardware description languages (HDLs) such as Verilog. Verilog allows designers to describe hardware at the RTL (Register Transfer Level), providing control over timing, performance, and area.
Core Components of ALU
A Verilog-based ALU typically consists of:
Input Ports:
A and B: n-bit operands (e.g., 8-bit or 32-bit)
ALU_Sel: A control signal used to select the operation
Output Ports:
ALU_Result: The n-bit result of the selected operation
Zero: A status flag that is high when the result is zero
Operations:
Arithmetic: Addition, subtraction, increment, decrement
Logic: AND, OR, XOR, NOT
Shift: Logical and arithmetic shifts (left/right)
Comparison: Set on less than (SLT)
