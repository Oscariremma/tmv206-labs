iter = 10000;

hold on

% Define v0
point = [0;0];

% Iterate from v0 to the designated iteration count.
for i=0:iter
    plot(point(1),point(2),'.') % Plot the point before
    point = barnsley(point);    % Calculate the current point
end

plot(point(1),point(2),'.') % Add the last point to the plot
