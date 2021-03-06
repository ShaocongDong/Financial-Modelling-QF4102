%parameter initialization
N = 200:200:20000;
S0 = 1;
r = 0.04;
T = 0.5;
sigma = 0.4;
q = 0.02;

new_values = rand(100,1);
for i = 1:100
    disp(i);
    new_values(i,1) = New_Euro_float_lookback_put(S0, r, T, sigma, q, N(i));
end
a1 = plot(N, new_values, 'm*-');
title('Single state BTM version 1');
xlabel('step size');
ylabel('option values');
legend(a1,'option values against number of steps');
