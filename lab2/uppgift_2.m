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
M1 = [
	1	5	9	29
	2	0	5	26
	3	7	11	39
];
M2 = [
	1	1	3	4	2
	-2	2	2	0	-4
	1	1	2	3	1
	1	-1	-2	-1	1
];

S1 = rref(M1)

% Looking at the data in S1 we can conclude,
% for the first equation system (M1) that:
%	x1 = 3
%	x2 = -2
%	x3 = 4


S2 = rref(M2)
% Looking at the data in S2 we can conclude,
% for the second equation system (M2) that:
%	x1 = 1 - x4
%	x2 = -2
%	x3 = 1 - x4		(same as x1)
%	x4 is free

