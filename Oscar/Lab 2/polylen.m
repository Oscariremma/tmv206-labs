function len=polylen(x,y)
    if length(x) ~= length(y)
        error("Vector X and Y must be of the same length")
    end
    len=0;
    for i=1:length(x)-1
        len = len + sqrt((x(i+1)-x(i)).^2 + (y(i+1)-y(i)).^2);
    end 

