function [newCent,newLand,newRent] = rentedCar(oldCent,oldLand,oldRent)

newCent = oldCent * 0.7;
newLand = oldCent * 0.1;
newRent = oldCent * 0.2;

newLand = newLand + oldLand * 0.6;
newCent = newCent + oldLand * 0.1;
newRent = newRent + oldLand * 0.3;

newRent = newRent + oldRent * 0.5;
newCent = newCent + oldRent * 0.3;
newLand = newLand + oldRent * 0.2;

end

