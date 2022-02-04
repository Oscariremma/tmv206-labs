function [normal] = normvect(vect1, vect2)
normalvect = cross(vect1,vect2); % Räkna ut kryssprodukten mellan vektorerna
normallength = norm(normalvect); % Räkna ut längden av kryssprodukten
normal = normalvect()/normallength; % Dela kryssprodukten med längden av vektorn
end
