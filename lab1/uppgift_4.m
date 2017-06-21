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
% + a moderate interval.
f = @ (x) ( x.^2 - cos(x) );
x = linspace(-2, 2);

plot(x, f(x));
xlabel('$x$', 'Interpreter', 'LaTex');
ylabel('$y$', 'Interpreter', 'LaTex');
title('$x^2 - \cos(x)$', 'Interpreter', 'LaTex');
grid on;

% Reads cursor inputs from the graph.
% Executing each input, looking for nearby zeros.
[xinput, yinput] = ginput();
for i = 1:size(xinput)
	x0 = xinput(i);
	
	xzero = fzero(f, x0);
	fprintf('Starting from %.2f, zero was found closeby at %.5f\n', x0, xzero);
end
