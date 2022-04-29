%Script to generate and fit a straight line
clear
clc
x = [0:1/100:1]';
y = zeros(length(x),1);
for i =1:length(x)
    y(i) = 0.8*exp(2.5*x(i))+rand;
end
plot(x,y,'.')
xlabel('x')
ylabel('y')

pause(3);

f = fit(x,y,'exp1')
plot(f,x,y);
xlabel('x')
ylabel('y')
legend('Data','Fit')