function [r] = rayleighquota(M, x)
    r = (x' * M * x)/(x' *x);
end
