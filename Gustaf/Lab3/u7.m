A = [1 0 0; 0 1 0; 1 0 1];
B = [1 0 0; -2 1 0; 0 0 1];
C = [2 1 1; 4 1 0; -2 2 1];

% Del A
A * (B * C)
(A * B) * C

A * (B + C)
A*B + A*C

(B + C) * A
B * A + C * A

% Del B