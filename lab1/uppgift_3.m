%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, close; % Clearing memory, console and closing figure.

% s = 1^2 + 2^2 + 3^2 + 4^2 + 5^2
s = 0;
for i = 1:5
	s = s + i^2;
end
fprintf('The sum is %g.\n', s);
