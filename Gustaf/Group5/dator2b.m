%Givet en matris A, ett tal r och en precision p med hjälp av inversiteration 
% beräknar det egenvärde som är närmast r och motsvarande
% egenvektor med sådan precision att skillnaden mellan två på varandra följande 
% Rayleigh-kvoter i iterationen är mindre än 10−p.

%
%
A = randi([10, 100], [500, 500]);
B = [1 2 0; 0 3 2; 2 1 1] * [1 0 0; 0 0.8 0; 0 0 0.6] * inv([1 2 0; 0 3 2; 2 1 1]);


[v, d] = eig(A)
[bk, rayleigh] = inverseiter(A, 0.65, 100)

[v, d] = eig(B)
[bk, rayleigh] = inverseiter(B, 0.65, 100)
