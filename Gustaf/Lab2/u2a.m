i = 0;
s = 0;

while round(s, 5) ~= round(pi/4, 5)
    s = s + ((-1)^i)/(2*i + 1);
    i = i+1;
end

disp(i);
disp(s);