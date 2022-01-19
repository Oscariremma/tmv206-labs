own_pi=0;
index=0;
while round(pi/4,5) ~= round(own_pi,5)
    own_pi = own_pi + ((-1).^index)/((2*index)+1);
    index = index + 1;
end

disp(own_pi)