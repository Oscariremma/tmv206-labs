clear all;
% Generate random matrixes
A = randi([0, 100], [10, 4])
b =  randi([0, 100], [10, 1])

% Calculate x
x = mldivide(A,b)

% If answer is valid the reulting matix will be close to zero (error is
% floting point error)
A*x-b

% Every zero row indicates a potential contrediction
rref(A)
