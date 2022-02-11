    function [point] = barnsley(pastpoint)
    % Define A indices
    A1 = [0 0; 0 0.16];
    A2 = [0.85 0.04; -0.04 0.85];
    A3 = [0.2 -0.26; 0.23 0.22];
    A4 = [-0.15 0.28; 0.26 0.24];
    % Create a cell array with all the A types
    A = {A1 A2 A3 A4};

    % Define b indices
    b1 = [0; 0];
    b2 = [0; 1.6];
    b3 = [0; 1.6];
    b4 = [0; 0.44];
    % Create a cell array with all the b types
    b = {b1 b2 b3 b4};

    chance = rand()*100; % Get a number between 0 and 100

    if chance <= 1 % Index for the first 1% chance
        index = 1;
    elseif chance <= 86 % Index for 85% chance
        index = 2;
    elseif chance <= 93 % Index for 7% chance
        index = 3;
    else % Index for the last 7 chance%
        index = 4;
    end

    % Calculate the point according to the algorithm
    point = A{1,index}*pastpoint+b{1,index};
end