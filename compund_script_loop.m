%% Calculate the future sum on a compound interest using a loop
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
filename = 'compound_interest.dat'; %create a string variable with the desired filename
fileID = fopen(filename,'w'); %open a file with the name of the file name variable
fprintf(fileID,'Time   FutureSum\n'); %Write details to the file
for n = 0:10
    if P>=0 && i>=0 && n>=0
        F = P*(i+1)^n;
        fprintf(fileID,'%d    %f\n ',n,F);
    else
    error('Error. Input must be positive numbers')
    end
end
fclose(fileID); %close the files once finished writing all details.

%% Reading the file to plot.
A = readmatrix('compound_interest.dat')
plot(A(:,1),A(:,2),'--d','LineWidth',2,'MarkerSize',8);
ax = gca;
ax.FontSize = 14
xlabel('Time','FontSize',16)
ylabel('Future Sum','FontSize',16)


