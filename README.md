# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Diego
Steven

## Summary
We learned the fundamental logic of binary subtraction and signed number representation. 
By implementing a Half Subtractor, we identified how the Borrow bit differentiates subtraction from addition.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The Half Adder from the last lab included both A&B to add, whereas this lab, we wanted A' & B. 

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
Implementing the End-Around Carry is difficult because it introduces hardware complexity and timing issues. 
Mathematically, a carry-out from the Most Significant Bit must be added back to the Least Significant Bit to get 
the correct result. However, simply wiring the carry-out directly back to the carry-in creates a 
combinatorial loop, which can cause the circuit to oscillate or crash during simulation.

### 3 - What is the edge case and problem with Two’s Complement number representation?

