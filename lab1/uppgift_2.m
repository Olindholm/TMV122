%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, clf; % Clearing memory, console and figure.

% Creating an (anonymous) function as specificed by the task.
% + the interval.
f = @ (x) ( sin(x) + 0.3 * sin(5*x) );
x = linspace(0, 4*pi);

plot(x, f(x));
xlabel('$x$', 'Interpreter', 'LaTex');
ylabel('$y$', 'Interpreter', 'LaTex');
title('$\sin(x) + 0.3 \sin(5x)$', 'Interpreter', 'LaTex');
grid on;
