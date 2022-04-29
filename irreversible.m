function y = irreversible(t,C)

global k1 k2 

y = zeros(3,1)
Ca = C(1)
Cr = C(2)
Cs = C(3)

y(1) = -k1*Ca;
y(2) = k1*Ca - k2*Cr;
y(3) = k2*Cr;