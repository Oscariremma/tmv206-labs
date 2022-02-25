clear all;

% Generate random matrixes
A = randi([0, 8], [4, 10])
b =  randi([0, 8], [4, 1])

% Calculate x
x = mldivide(A,b)

% If answer is valid the reulting matix will be close to zero (error is
% floting point error)
A*x-b

% Shows the free "variables" as the collums without pivot elements
rref(A)
