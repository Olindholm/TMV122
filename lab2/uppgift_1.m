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
	1	4	7	10
	2	5	8	11
	3	6	9	12
];
b = [1; 3; 5];
c = [0 2 3 6 8];

fprintf('a23 = %g\n', A(2,3)); % Element in row 2, column 3 of A.
fprintf('b2 = %g\n', b(2)); % Element in row 2 of b.
fprintf('c3 = %g\n', c(3)); % Element in column 3 of c.

% Editing element (a23) in row 2, column 3 of A to be 15.
A(2,3) = 15;
