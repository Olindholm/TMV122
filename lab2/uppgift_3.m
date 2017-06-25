%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, close; % Clearing memory, console and closing figure.

% Notice!
% A is a 3x4 matrix
% b is a column-vector of length 3
% c is a row-vector of length 5
A = [
	11	4	3	7
	2	6	8	5
	9	12	1	10
];
b = [3; 1; 5];
c = [4 2 8 0 6];

[m, n] = size(b); fprintf('b is a %gx%g matrix\n', m, n);
[m, n] = size(c); fprintf('c is a %gx%g matrix\n', m, n);
 
% Looking at the data we can conclude that:
%	b must be a column-vector due to only having one column.
%	c must be a row-vector due to only having one row.

% Extracts the maximum/minimum value of each column, stored in v,
% and their index stored in i.
[maxvalues, maxrow] = max(A); [maxvalue, maxcolumn] = max(maxvalues);
[minvalues, minrow] = min(A); [minvalue, mincolumn] = min(minvalues);

fprintf( ...
	'\nThe max and min values in A are:\n%g at (%g, %g)\n%g at (%g, %g)\n', ...
	maxvalue, maxrow(maxcolumn), maxcolumn, ...
	minvalue, minrow(mincolumn), mincolumn ...
);
