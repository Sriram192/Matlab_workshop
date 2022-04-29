clear
clc
x = [-2.5:0.1:2.5];
y = [-2.5:0.1:2.5];
[X,Y] = meshgrid(x,y);
z1 = @(x,y) 10*x + 3*y.^2 - 3;
z2 = @(x,y) x.^2 - exp(y) - 2;
%F1 = 10*X + 3*Y^2 - 3;
%F2 = X^2 - exp(Y) - 2;

surf(X,Y,z1(X,Y))
hold on;
surf(X,Y,z2(X,Y))