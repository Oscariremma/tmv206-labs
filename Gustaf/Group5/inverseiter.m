function [rayleigh,bk] = inverseiter(A, r,  p)
    % Skapa en slumpad vektor b_k som första gissning
    bk = randi([0, 100], [size(A, 1), 1]);

    % Skillnad mellan iterationer
    delta = p;

    % Variabel för förra iterationens värde
    last = 0;

    i = 0;

    I = eye(size(A, 1));

    % Iterera så länge skillnaden är större än 10^-p
    while abs(delta) > 10^(-p)
        % Algoritm för inversmetoden
        bk1 = inv(A - r*I) * bk;
        bk1_norm = norm(bk1);
        bk = bk1 / bk1_norm;

        % Räkna ut rayleighkvot
        rayleigh = rayleighquota(A, bk);

        % Bestäm skillnaden från förra värdet
        delta = rayleigh - last;
        last = rayleigh;
        
        i = i + 1;
    end

    % Skriv ut antal iterationer
    disp(i);
end
