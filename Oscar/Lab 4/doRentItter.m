function doRentItter(c,l,r,itter)
for i=1:itter
    [c,l,r] = rentedCar(c,l,r);

    %Print on 1, 10, 100, 1000...
    if mod(log10(i),1) == 0
        fprintf("Itteration nr %i\n",i )
        fprintf("Centralen %.4f\n",c )
        fprintf("Landvetter %.4f\n",l )
        fprintf("Uthyrda %.4f\n\n",r )
    end

end
end

