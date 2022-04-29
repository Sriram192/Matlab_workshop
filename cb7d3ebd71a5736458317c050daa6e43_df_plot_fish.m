% This is barebones MATLAB script to help you get started plotting direction fields. 
% Please feel free to edit and make it your own. (E.g. you my want to add scaling in y, 
% the ability to overlay solutions, etc.)

clear all;
close all;

N = 14;  %Number of segments in y
M = 27;  %Number of segments in t

dy=0.25; %Scale factor for y
dt=0.25; %Scale factor for t

offy=0; %Offset in y
offt=0; %Offset in t

% Plot the direction field
for i = 1:N
    for j = 1:M
        y(i) = ((i-1)*dy)+offy;
        t(j) = ((j-1)*dt)+offt;
        E=2; r=1;
        slope = r*(1-y(i)).*y(i)-E*y(i); % Equation for slope y = y(i), t = t(j) 
        mag = (dt^2+(slope*dt)^2)^0.5 % Scale line segments
        u(i,j) = dt/mag;
        v(i,j) = slope*dt/mag;
    end
end

quiver(t,y,u,v)

% Plot a trajectory
% yt(1)=2; %Initial value of y
%    for j = 2:M
%        slope = 4/yt(j-1);
%        yt(j) = yt(j-1)+slope*dt
%    end    
%hold on
%plot(t,yt,'-r');

% Create xlabel
xlabel('t','FontSize',16);

% Create ylabel
ylabel('y(t)','FontSize',16);
