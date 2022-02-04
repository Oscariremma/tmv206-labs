function [point] = proj(P,n)
%PROJ Summary of this function goes here
%   Detailed explanation goes here

%Normalize the vector
n = n/norm(n);

% Calculate the distance form the point to the plane
fac = -dot(n, P)/dot(n,n);

%Move the point allong the normal vector by the distance to the plane
point = P + n*fac;

end

