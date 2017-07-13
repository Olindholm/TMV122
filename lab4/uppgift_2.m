%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, close; % Clearing memory, console and closing figure.
format long;

s = 0;
n = 0;

% Looping through all terms, summerizing them
% until we reach the accuracy of 5 correct decimals.

% Construction of a do-while loop (not supported by MatLab)
while true % do
	d = 4*(-1)^n/(2*n+1);

	if (abs(d) < 0.00001) % while
		break;
	end

	s = s + d;
	n = n + 1;
end

fprintf('pi = %.5f\n', s);
fprintf('Calculations took %g number of iterations.\n', n);
