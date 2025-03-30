%%% Problem 1.49
% Discrete-time signals:
% (a) x[n] = 10 * (0.7) ^ n,  n >= 0
% (b) y[n] = 10 * (1.2) ^ n,  n >= 0

% Define index n
n = 0:20;  % 20 : upper limit, can adjust it if needed

% Define the signals
x = 10 * (0.7) .^ n;
y = 10 * (1.2) .^ n;

% Plot the signals
% stem (discrete-time plot)
figure;
% (a)
subplot(2,1,1);
stem(n, x, 'filled');
title('x[n] = 10(0.7)^n, n>=0');
xlabel('n');
ylabel('x[n]');
grid on;
% (b)
subplot(2,1,2);
stem(n, y, 'filled');
title('y[n] = 10(1.2)^n, n>=0');
xlabel('n');
ylabel('y[n]');
grid on;
