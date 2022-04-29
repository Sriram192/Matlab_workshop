%script file for numerical integration of laminar flow problem
clear 
clc
%{
Consider water flowing through a circular tube under laminar fow
conditions. The velocity profile for such flow is well defined. Calculate
the average velocity of a fully developed laminar flow of water in a 50m tube
flowing through a pressure drop of 0.01 atm.

%}
delP = 0.01*1.01325e5 ;      %delta P = 0.01 atm
D = 0.0254/2;                %dia of tube = 0.5 inch = 0.0254/2 m
r = [0:D/1000:D/2];
mu = 1e-3;              %viscosity of water
L = 50;                  % length = 1m
V_avg_analytical = (delP*D^2)/(32*mu*L);
Re = (D*V_avg_analytical*1000)/mu;
f = (1 - ((2*r)/D).^2).*r;
f = (delP/(2*mu*L))*f;
V_avg_int = trapz(r,f);

fprintf('Average value from analytical expression : %f\n',V_avg_analytical)
fprintf('Average value from numerical integration : %f\n',V_avg_int)
