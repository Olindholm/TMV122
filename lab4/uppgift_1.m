%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, clf; % Clearing memory, console and figure.

% Creating two arrays of different angles,
% each angle repristenting a corner inscribed by a circle.
% t for triangle, s for square.
circle = 0:0.001:2 * pi;
triangle = (6:8:30) * pi / 12;
square = (1:2:9) * pi / 4;

figures = {circle ; triangle ; square};

x = @ (t) ( cos(t) );
y = @ (t) ( sin(t) );

hold on;

for i = 1:length(figures);
	t = figures{i};
	l = polylen(x(t), y(t));
	
	plottedLine = plot(x(t), y(t), 'LineWidth', 1.5);
	text(0.05 + x(t(end)), -0.05 + y(t(end)), ['$' num2str(l) '$ units'], 'Color', get(plottedLine, 'Color'), 'FontSize', 12, 'Interpreter', 'LaTex');
end

axis equal;

function L = polylen(x, y)
% polylen - Calculates the length of a polyline.
%	Syntax:
%		L = polylen(x, y)
%	Argument(s):
%		x	-	all x coordinates.
%		y	-	all y coordinates (corresponding to the x coordinates).
%	Returns:
%		L	-	the sum of the length between all points.
%   Description:
%           Calculates the length of a polyline given all coordinates.
%   Example:
%           L = polylen([-1 0 1], [0 1 0])
	L = 0;
	for i=1:length(x) - 1
		L = L + sqrt((x(i+1) - x(i))^2 + (y(i+1) - y(i))^2);
	end
end
