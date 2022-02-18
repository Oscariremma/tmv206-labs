function [newLandvetter, newCentral, newRented] = rentedcars(oldLandvetter, oldCentral, oldRented)
% Centralen i början av en vecka är 70% kvar där i början av veckan därpå, 10% finns på Landvetter och 20% är uthyrda
% Landvetter är motsvarande siffror att 60% är kvar på Landvetter, 10% är på Centralen och 30% är uthyrda
% Av de som var uthyrda i början av en vecka är 50% det också veckan därpå, 30% är på Centralen och 20% på Landvetter

% 50% kvar, 20% från Centralen, 30% från Landvetter
newRented = 0.5 * oldRented + 0.2 * oldCentral + 0.3 * oldLandvetter;
% 70% kvar, 10% från Landvetter, 20% uthyrda, 30% återlämnas
newCentral = 0.7 * oldCentral + 0.3 * oldRented + 0.1 * oldLandvetter;
% 60% kvar, 10% från Centralen , 30% uthyrda, 20% återlämnas
newLandvetter = 0.6 * oldLandvetter + 0.2 * oldRented + 0.1 * oldCentral;
end
