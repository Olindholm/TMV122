%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, clf; % Clearing memory, console and figure.

% Creating an interval between a and b.
a = 0; b = 2*pi;
t = linspace(a, b);

% Creating an array of 4 angles,
% one for each corner of the inscribed circle.
n = (1:2:7) * pi / 4;

x = @ (t) ( cos(t) );
y = @ (t) ( sin(t) );

hold on;
fill(x(t), y(t), 'g');
fill(x(n), y(n), 'y');
axis equal;
