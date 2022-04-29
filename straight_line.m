%Script to generate and fit a straight line
clear
clc
x = [0:5/100:5]';
y = zeros(length(x),1);
for i =1:length(x)
    y(i) = 2.3*(x(i)+rand) + 2;
end
plot(x,y,'.')
xlabel('x')
ylabel('y')

pause(8);

f = fit(x,y,'poly1')
plot(f,x,y);
xlabel('x')
ylabel('y')
legend('Data','Fit')
fprintf('The slope is %f and the intercept is %f\n',f.p1,f.p2)