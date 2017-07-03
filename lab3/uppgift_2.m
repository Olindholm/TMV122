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
a = 0; b = 8;
x = linspace(a, b, 1000);
f = @ (x) ( x - x .* cos(7*x) );

plot(x, f(x));
xlabel('$x$', 'Interpreter', 'LaTex');
ylabel('$y$', 'Interpreter', 'LaTex');
title('$x - x \cos(7x)$', 'Interpreter', 'LaTex');
grid on;
