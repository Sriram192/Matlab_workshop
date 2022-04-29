clear
clc
% Example script 1 for numerical integration
%Function : 
%               f(x) = exp(-x^2)

%% plotting the function
x = [0:0.1:10];
fx = exp(-x.^2);
plot(x,fx,'LineWidth',2)
ax = gca;
ax.FontSize = 14;
xlabel('x','FontSize',16);
xlabel('f(x)','FontSize',16);

%% Method 1 : using integral
fun = @(x) exp(-x.^2);
integ1 = integral(fun,0,10)

%% Method 2 : Trapezoidal Integration
integ2 = trapz(x,fx)