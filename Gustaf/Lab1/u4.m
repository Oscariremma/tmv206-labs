%% Script u4

x=linspace(-2*pi, 2*pi);
y=min_fun(x);
plot(x,y)
grid on
%%

x=fzero(@min_fun, 1)