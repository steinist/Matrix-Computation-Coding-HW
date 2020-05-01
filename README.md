# Matrix-Computation-Coding-HW
## HKUST Fall2020 - MATH3322: Matrix Computation

### Homework 1 - `matvecprod.m`
Compare performances of different implementations of the matrix-vector multiplication. An incomplete Matlab code `matvecprod.m` is attached.
1. Complete the code for matrix-vector multiplication.
2. Run the program on your computer and record the time needed for each implementation.

Here are two remarks. (1) Different implementations may have very different performances, though mathematically they are equivalent. (2) We should call build-in functions for matrix computations if they are available, because they are optimized for your computer.


### Homework 2 - `spdtridiagsolver.m`
We consider a discrete 1-D Laplacian equation ***Ax = b***, where

***A*** ∈ R^(n×n) with 2 as diagonal and -1 as the first diagonal below and above the main diagonal and ***b*** is a vector of 1's.

Write a Matlab code to implement your algorithm for solving ***Ax = b*** where A template file `spdtridiagsolver.m` is provided. Plot the solution you obtained with n = 500


### Homework 3 - `gs_qr.m`
Implement and compare the Gram-Schmidt procedure and the modified Gram-Schmidt for QR decomposition. A template file `gs_qr.m` is provided. Plot the curve for accuracy against test problems. Which algorithm is more accurate?
