function y=specvol(v)

%Equation of state : Redlich–Kwong EOS

% v^3(p) - v^2(RT) + v(a-pb^2 - RTb) -ab = 0

% a and b are parameters of the model
% Given temperature and pressure, find the specific volume of a 
% gaseous mixture. For a pure component, a and b are determined
% using the critical properties.
% a = 0.42748*((R^2*Tc^2)/pc))*(1/Tc^0.5)
% b = 0.08664*((R*Tc)/pc)

%Problem : Find the specific volume of n-butane at 500 K and 18 atm using 
% the Redlich–Kwong equation of state

%% Parameters
Tc = 425.2;
pc = 37.5;
T = 500;
p = 18;
R = 0.08206;
a = 0.42748*((R*Tc)^2/pc)*(Tc/T)^0.5;
b=0.08664*(R*Tc/pc);
%% Redlich Kwong EOS
y = p*v^3-R*T*v^2+(a-p*b^2-R*T*b)*v-a*b;
