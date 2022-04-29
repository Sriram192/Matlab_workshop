%simple ode solve script
%script to solve a simple ode of the form:

%           dy/dt = 2t

[t,y] = ode45(@simple_ode,[0,10],0); %solving ode using ode45 routine
plot(t,y,'o','MarkerSize',10,'LineWidth',2)
hold on
%{
Analytical expression:
        dy/dt = 2t
        y = t^2 + C
        @t = 0, y = 0 => C = 0
%}
T = [0:0.1:10];
Y = T.^2;
plot(T,Y,'LineWidth',2)
xlabel('t','FontSize',16)
ylabel('y','FontSize',16)
legend('ODE45','ANALYTICAL','Location','northwest','FontSize',16)