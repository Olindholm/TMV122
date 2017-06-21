%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, close; % Clearing memory, console and closing figure.

r = 4;
A = areaofcircle(4);

fprintf('A circle with the radius of %g has an area of ~%.2f\n', r, A);

function A = areaofcircle(r)
% areaofcircle - Calculates the area of a circle given a radius.
%	Syntax:
%		A = areaofcircle(r)
%	Argument(s):
%		r	-	radius of the circle.
%	Returns:
%		A	-	the area of the circle.
%   Description:
%           Calculates the area of a circle given a radius.
%   Example:
%           A = areaofcircle(4)
	A = pi * r.^2;
end
