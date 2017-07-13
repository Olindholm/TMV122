%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, clf; % Clearing memory, console and figure.
axis([0 1 0 1]);

% Reads cursor inputs from the graph.
% Executing each input, looking for nearby zeros.
[x, y] = ginputleast(3);
x = [x; x(1)];
y = [y; y(1)];
fill(x, y, '-o');
axis([0 1 0 1]);

function [x, y] = ginputleast(n)
% ginputleast - Uses ginput to gather points from a graph/figure.
%	Syntax:
%		[x, y] = ginputleast(n)
%	Argument(s):
%		n	-	at least the number of points to be gathered.
%	Returns:
%		[x, y]	-	all points gathered by ginput. See ginput for further help.
%   Description:
%           Gathers a minimum amount of points, or more from the graph/figure.
%   Example:
%           [x, y] = ginputleast(3);
	x = []; y = [];
	fprintf('Select at least %g point(s) on the figure.\n', n);
	
	% Construction of a do-while loop (not supported by MatLab)
	while true % do
		[xinput, yinput] = ginput();
		
		% In case of many subsequent ginputs are proccessed
		% values will safely be kept/added to x and y variables.
		x = [x; xinput];
		y = [y; yinput];
		
		if (length(x) >= n) % while
			break;
		end
		
		i = length(x);
		% Note '' is the escape character
		% for a single ' (Single quotation mark)
		fprintf('You''ve only selected %g point(s), select at least %g more.\n', i, n-i);
	end
end
