%Solving two simultaneous odes
%{
Solving the following set of odes:
        
                dy1  
                ---  =  y2
                dt

                dy2
                ---- = -y1
                dt
%}

[t,y] = ode45(@simple_sim,[0,10],[1 1])
plot(t,y(:,1),'--','LineWidth',2)
hold on
plot(t,y(:,2),'-','LineWidth',2)
xlabel('t','FontSize',16)
ylabel('y','FontSize',16)
legend('y1','y2','Location','northwest','FontSize',16)