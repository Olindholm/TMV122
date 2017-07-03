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

% First subplot
x = @ (t) ( cos(t) + cos(3*t) );
y = @ (t) ( sin(2*t) );

subplot(1,2,1);
plot(x(t), y(t));
title({'$x(t) = \cos(t) + \cos(3t)$' ; '$y(t) = \sin(2t)$'}, 'Interpreter', 'LaTex');
grid on;

% Second subplot
x = @ (t) ( cos(t) + cos(4*t) );
y = @ (t) ( sin(2*t) );

subplot(1,2,2);
plot(x(t), y(t));
title({'$x(t) = \cos(t) + \cos(4t)$' ; '$y(t) = \sin(2t)$'}, 'Interpreter', 'LaTex');
grid on;
