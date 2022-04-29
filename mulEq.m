function f = mulEq(p)

%{
Suppose you want to solve the following two equations:
            10x + 3y^2 =  3
            x2 - exp(y) = 2
There are two main ways to solve multiple equations in MATLAB. The first is to use the
‘fsolve’ command. The second way is to use the optimization routines and the ‘fminsearch’
command.
%}

%% method : Using fsolve
x = p(1);
y = p(2);

f(1) = 10*x + 3*y.^2 - 3;
f(2) = x.^2 - exp(y) - 2;

% solve using Sol = fsolve('mulEq',[initx inity])