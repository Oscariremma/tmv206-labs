[x,y] = ginput();


x = [x; x(1)];
y = [y; y(1)];

disp(polylen(x,y))


plot(x,y,'-o')
axis([0 1 0 1])
text(0.1,0.3,'ABC') % Koordinatplacerad text p°a grafen
fill(x,y,'g')
axis([0 1 0 1])
