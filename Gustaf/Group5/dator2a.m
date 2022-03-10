% Givet en matris A och en precision p beräknar det största egenvärdet till A 
% och motsvarande egenvektor med hjälp av potensmetoden med sådan precision 
% att skillnaden mellan två på varandra följande Rayleigh-kvoter i iterationen är mindre än 10^−p. 
% Tänk på att normalisera vektorerna. Kommandot 'norm(x)'  ger längden
% av vektorn x. Låt gärna precisionen vara ett valfritt argument
% och lägg in en standardprecision som används om man bara ger
% en matris. Antalet inparametrar kan man kontrollera med kommandot 'nargin'.

% Slumpad 500x500-matris
A = randi([10, 100], [500, 500]);

% Matris från teoriövning 1
B = [1 2 0; 0 3 2; 2 1 1] * [1 0 0; 0 0.8 0; 0 0 0.6] * inv([1 2 0; 0 3 2; 2 1 1]);

% Räkna ut egenvärden med matlabs egna funktion, och även med egen funktion
[v, d] = eig(A)
[bk, rayleigh] = poweriter(A, 100)

% Räkna ut egenvärden med matlabs egna funktion, och även med egen funktion
[v, d] = eig(B)
[bk, rayleigh] = poweriter(B, 100)
