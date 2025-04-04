%%% Problem 3.53
%%% Obtain the Bode plots

% (a) H(s) = s(s+10)/(s+20)(s+50)
figure;
num = [1 10 0];
den = [1 70 1000];
bode(num, den);
grid on;
% (b) H(s) = s+1/(s+2)(s2+22.5s+16)
figure;
num = [1 1];
den = [1 24.5 61 32];
bode(num, den);
grid on;