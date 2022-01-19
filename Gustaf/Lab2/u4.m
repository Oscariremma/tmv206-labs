[x,y] = ginput();

x = [x; x(1)];
y = [y; y(1)];

disp(polylen(x,y))

plot(x,y,'-o')
fill(x,y,'g')
axis([0 1 0 1])