own_pi=0;
for index=0:1000
    own_pi = own_pi + ((-1).^index)/((2*index)+1);
end

disp(own_pi)