function a = Average(x)
% function to calculate the average (or) mean of a vector
sum = 0;
for i = 1:length(x)
    sum = sum+x(i);
end
a = sum/length(x);

%check with matlab inbuilt mean() function