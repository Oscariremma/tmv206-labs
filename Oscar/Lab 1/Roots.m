x=linspace(-1.5,1.5);
y=min_fun(x);
plot(x,y)
grid on


x=fzero(@min_fun,1);
