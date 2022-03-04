function [rayleigh,bk] = inverseiter(A, r,  p)
    bk = randi([0, 100], [size(A, 1), 1]);

    delta = p;
    last = 0;

    i = 0;

    I = eye(size(A, 1));

    while abs(delta) > 10^(-p)
        bk1 = inv(A - r*I) * bk;
        bk1_norm = norm(bk1);
        bk = bk1 / bk1_norm;

        rayleigh = rayleighquota(A, bk);
        delta = rayleigh - last;
        last = rayleigh;
        i = i + 1;
    end
    disp(i);
end