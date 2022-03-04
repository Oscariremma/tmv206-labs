function [rayleigh, bk] = poweriter(A, p)
    delta = p;

    bk = randi([0, 100], [size(A, 1), 1]);

    last = 0;

    i = 0;

    while abs(delta) > 10^(-p)
        bk1 = A * bk;
        bk1_norm = norm(bk1);
        bk = bk1 / bk1_norm;

        rayleigh = rayleighquota(A, bk);
        delta = last - rayleigh;
        last = rayleigh;
        i = i + 1;
    end
    disp(i);
end

