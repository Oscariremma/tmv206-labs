function [rayleigh, bk] = poweriter(A, p)
    % Skillnad mellan iterationer
    delta = p;

    % Generera en slumpvector som intitial gissning 
    bk = randi([0, 100], [size(A, 1), 1]);

    % Variabel för förra iterationens värde
    last = 0;

    % Antal körda iterationer
    i = 0;

    % Iterera tills skilnaden från förra iterationen är mindre än 10^-p
    while abs(delta) > 10^(-p)
        % Algoritm för potensmetoden
        bk1 = A * bk;
        bk1_norm = norm(bk1);
        bk = bk1 / bk1_norm;

        % Räkna ut rayleighkvot
        rayleigh = rayleighquota(A, bk);

        % Räkna ut skilnaden från förra iterationen
        delta = last - rayleigh;
        last = rayleigh;

        i = i + 1;
    end

    % Skriv ut antal iterationer
    disp(i);
end
