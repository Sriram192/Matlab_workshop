x = [-4:0.1:2];
f = x.^2 + 2*x - 3;
plot(x,f,'LineWidth',2)
hold on;
plot(-3,0,'O','MarkerSize',10,'LineWidth',2,'Color','Red')
plot(1,0,'O','MarkerSize',10,'LineWidth',2,'Color','Red')
yline(0,'LineWidth',2)
xlabel('x','FontSize',16)
ylabel('f(x)','FontSize',16)


%% method 1 using fzero
y = inline('x^2 + 2*x - 3')
root1 = fzero(y,-4)
root2 = fzero(y,2)

%% method 2 using roots
both_roots = roots([1 2 -3])

%% method 3 using symbolic solver

syms x;
fun = x^2 + 2*x -3
ans = solve(fun)

%% method 4 using fsolve
root1f = fsolve(y,0)
root2f = fsolve(y,-4)

