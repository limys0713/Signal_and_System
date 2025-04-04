%%% Problem 3.51
%%% Find the zeros and poles

% (a) s-2/(s+1)2+9
num = [1 -2];
den = [1 2 10];
z = roots(num); % Zeros
p = roots(den); % Poles
disp('Question (a):')
disp('zeros = ')
disp(z)
disp('poles = ')
disp(p)
% (b) s2+2s+5/s(s2+4s+13)
num = [1 2 5];
den = [1 4 13 0];
z = roots(num); % Zeros
p = roots(den); % Poles
disp('Question (b):')
disp('zeros = ')
disp(z)
disp('poles = ')
disp(p)
% (c) s2+10s+5/s3+4s2+10s+6
num = [1 10 5];
den = [1 4 10 6];
z = roots(num); % Zeros
p = roots(den); % Poles
disp('Question (c):')
disp('zeros = ')
disp(z)
disp('poles = ')
disp(p)