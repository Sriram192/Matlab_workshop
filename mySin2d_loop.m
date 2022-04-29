%% Sin2d using for loop
x = 0:0.1:pi;
y = 0:0.1:pi;

for i = 1:length(x)
    for j = 1:length(y)
        f(i,j) = sin(x(i)^2+y(j)^2);
    end
end

surf(x,y,f)
saveas(gca,'Sin2d_for.png')