x = 0:0.1:pi;
y = 0:0.1:pi;
[X,Y] = meshgrid(x,y);
f = sin(X.^2+Y.^2);
surf(x,y,f)
saveas(gca,'Sin_surf.png')
