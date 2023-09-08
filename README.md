# Matlab-1
Summary
Exercise 1: 2D Random Walks on a Lattice

Objective:
The first exercise aimed to compute and analyze two-dimensional random walks on a lattice using Matlab.

Methodology:

Defined what a random walk is and its properties.
Implemented a Matlab script (runRW2D.m) that uses a function (randomwalk2D.m) to generate a 2D random walk with N steps.
The function takes two arguments: N (number of steps) and toplot (whether to plot the walk or not).
Used mathematical modeling to verify the symmetry of the generated random walk.
Calculated the variance of the final position for different values of N.
Results:

The experimental results confirmed the theoretical predictions about the average distance traveled in 2D.
Exercise 2: Discretization of Differential Equations

Objective:
The second exercise focused on discretizing a differential equation with variable coefficients, subject to Dirichlet and Neumann boundary conditions.

Methodology:

Discretized the domain using a mesh with step size h.
Defined a discretization scheme and wrote down the resulting linear system.
Investigated the properties of the coefficient matrix.
Used Matlab to test the accuracy of the approximations.
Results:

The matrix A was found to be symmetric, strict diagonally dominant, and positive definite, ensuring a unique solution.
The numerical solution was found to be accurate enough when compared with the exact solution.
The exercise also discussed the compatibility condition for Neumann boundary conditions and its implications for solvability.
How It Was Solved:
Matlab Implementation:
For the first exercise, Matlab was used to implement and visualize the 2D random walk.
For the second exercise, Matlab was used to discretize the differential equation and solve the resulting linear system.
Mathematical Modeling:
In the first exercise, mathematical models were used to verify that the generated random walk is symmetric.
In the second exercise, the properties of the coefficient matrix were mathematically investigated.
Analysis and Validation:
The variance of the final position was calculated in the first exercise.
The error norm between the numerical and exact solutions was calculated in the second exercise to verify the accuracy.
Graphical Representation:
Plots were generated to visualize the random walk and to compare the numerical and exact solutions in the second exercise.
By combining Matlab coding with mathematical analysis, both exercises were successfully completed, and the results were validated against theoretical expectations.
