function f = simple_sim(t,y)
f = zeros(2,1);
f(1) = y(2);
f(2) = -y(1);