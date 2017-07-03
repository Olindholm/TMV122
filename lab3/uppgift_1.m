%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, clf; % Clearing memory, console and figure.

% Creating an interval between a and b, minus s on both sides.
% s is a small positive number reducing the interval slightly to avoid
% undefined points -pi/2 and pi/2.
s = 0.1;
a = -pi/2 + s; b = pi/2 - s;
x = linspace(a, b);
y = tan(x);

plot(x, y);
xlabel('$x$', 'Interpreter', 'LaTex');
ylabel('$y$', 'Interpreter', 'LaTex');
title('$\tan(x)$', 'Interpreter', 'LaTex');
grid on;
