function f = Factorial(n) 
% FACTORIAL(N) returns the factorial of N. 
% Compute a factorial value.
sum = 1;
if n>=0 & isinteger(int16(n))
    for i = 1:n
        sum = sum*i;
    end
    f = sum;
else
    error('Enter a valid integer');
end

%alternate method:
%if n>=0 & isinteger(int16(n))
%   f = prod(1:n);
%else
%    error('Enter a valid integer');
%end
%check answer with matlab inbuilt factorial command