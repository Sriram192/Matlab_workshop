%Soving simultaneous odes for an irreversible reaction in series
% Example taken from Levenspeil.
%{
            A ---> R ---> S

                 dCA
            rA = ---- = -k1*CA
                  dt  

                 dCR
            rR = ---- = k1*CA - k2*CR
                  dt  

                 dCS
            rS = ---- = k2*CR
                  dt
%}     

global k1 k2

k1 = 0.3; %[s^-1]
k2 = 0.3; %[s^-1]

C0 = [2,0,0] %initial concentration of reactants.

[t,X] = ode45(@irreversible,[0,10],C0);
plot(t,X(:,1),'-','LineWidth',2)
hold on
plot(t,X(:,2),'-','LineWidth',2)
plot(t,X(:,3),'-','LineWidth',2)
ax = gca;
ax.FontSize = 14;
xlabel('time (s)','FontSize',16)
ylabel('Conc (mol/lit)','FontSize',16)
legend('C_A','C_R','C_S','Location','northeast','FontSize',16)

