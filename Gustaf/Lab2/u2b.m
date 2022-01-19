iter = 1000;

s = 0;
for i=0:iter
    s = s + ((-1)^i)/(2*i + 1);
end

disp(s);