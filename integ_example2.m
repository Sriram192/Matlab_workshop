clear
clc
% Example script 1 for numerical integration
%Function : 
%               f(x)=1/(x^3-2x-c)
%               c is a parameter

%% plotting the function
x = [0:0.01:2];
c = 5;
fx = 1./(x.^3-2*x-c);
plot(x,fx,'LineWidth',2)
ax = gca;
ax.FontSize = 14;
xlabel('x','FontSize',16);
xlabel('f(x)','FontSize',16);

%% Method 1 : using integral
fun = @(x,c) 1./(x.^3-2*x-c);
integ1 = integral(@(x) fun(x,5),0,2)

%% Method 2 : Trapezoidal Integration
integ2 = trapz(x,fx)