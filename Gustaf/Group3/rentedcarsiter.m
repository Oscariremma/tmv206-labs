function rentedcarsiter(oldLandvetter, oldCentral, oldRented, iter)
l = oldLandvetter; % Amount of cars at Landvetter
c = oldCentral; % Amount of cars at Centralen
r = oldRented; % Amount of rented cars

for i=1:iter
    % Step the simulation once
    [l, c, r] = rentedcars(l,c,r);

    % Check if the iteration is an integer exponent of 10
    if mod(log10(i),1) == 0
        % Display current values
        fprintf("Iteration %i\nLandvetter: %.5f\nCentralen: %.5f\nRented: %.5f\n\n", i, l, c, r);
    end
end
end

