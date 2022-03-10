function [r] = rayleighquota(M, x)
    % Algoritm för Rayleighkvot
    r = (x' * M * x)/(x' *x);
end
