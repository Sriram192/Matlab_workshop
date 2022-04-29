%% Calculate the future sum on a compound interest
%%
%problem statement:F defines the future value of a present day investment P 
%                    that earns an interest rate i compounded over n years.
%                   F = P (i+1)^n
%Write a MATLAB script that will evaluate the future sum provided P,i and n
%%
clear;
clc;
P = 1000;
i = 0.12;
n = 4;
if P>0 && i>0 && n>0
    F = P*(i+1)^n;
else
    error('Error. Input must be positive numbers')
end

fprintf("Future sum for a principal of %.2f Rs over %d years @ %.2f is %.2f Rs\n",P,n,i,F)