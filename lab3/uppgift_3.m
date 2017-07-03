%
% Copyright 2017 (C) Osvald Lindholm
%
% This file is the result of the laborations provided
% for the Inledande Matematik (TMV122)
% course at Chalmers. The laborations can be found at:
% http://www.math.chalmers.se/Math/Grundutb/CTH/Matlab/AutomationMekatronik/ht16/
% 

clear, clc, clf; % Clearing memory, console and figure.

% Creating an interval between a and b.
a = 0; b = 12;
x = linspace(a, b);

hold on;
for i = 1:3
	theta = i*15;
	plot(x, kastbana(x, theta));
	text(2*i, 0.15 + kastbana(2*i, theta), ['$' num2str(theta) '^{\circ}$'], 'Interpreter', 'LaTex');
end

xlabel('tid $[s]$', 'Interpreter', 'LaTex');
ylabel('h{\"o}jd $[m]$', 'Interpreter', 'LaTex');
title('Kastbana med $v = 10$ m/s och olika $\theta$', 'Interpreter', 'LaTex');
axis([0 12 0 5]); % Format follows as [xmin xmax ymin ymax]
grid on;

function y = kastbana(x, theta)
% kastbana - Beräknar kastbanan av ett objekt.
%	Syntax:
%		y = areaofcircle(x, theta)
%	Argument(s):
%		x		-	tiden från start av kastet.
%		theta	-	kastvinkeln i grader.
%	Returns:
%		y		-	höjden på kastobjektet vid varje x tidpunkt.
%   Description:
%           Beräknar höjden av ett objekt vid varje tidpunkt enl. en
%           kastbana.
%   Example:
%           y = kastbana(linspace(0,10), 15)
	t = theta * pi/180;
	v0 = 10; y0 = 1.85; g = 9.81;
	a = g / ( 2 * v0^2 * cos(t)^2 );
	b = v0^2 * sin(2*t) / (2*g);
	c = v0^2 * sin(t)^2 / (2*g);
	y = y0 - a * (x-b).^2 + c;
end
