%%% Problem 1.50
% Continuous-time signals over -2 <= t <= 4
% (a) x(t) = 2 r(t)      
% (b) y(t) = 5 e ^ (-2t) u(t)   
% (c) z(t) = 4 cos(4t) + 2 sin(2t - pi / 4)

% Define continuous-time t
t = -2 : 0.001 : 4;  

% Define step function u(t) & ramp function r(t)
u = (t >= 0);    % u(t) is 1 for t >= 0, otherwise is 0
r = t .* u;      % r(t) is t for t >= 0, otherwise is 0

% Define the signals
x = 2 * r;
y = 5 * exp(-2 * t) .* u;
z = 4 * cos(4 * t) + 2 * sin(2 * t - pi / 4);

% Plot the signals
figure;
% (a)
subplot(3,1,1);
plot(t, x, 'LineWidth', 1.5);
title('x(t) = 2r(t)');
xlabel('t(sec)');
ylabel('x(t)');
grid on;
% (b)
subplot(3,1,2);
plot(t, y, 'LineWidth', 1.5);
title('y(t) = 5 e^{-2t} u(t)');
xlabel('t(sec)');
ylabel('y(t)');
grid on;
% (c)
subplot(3,1,3);
plot(t, z, 'LineWidth', 1.5);
title('z(t) = 4 cos(4t) + 2 sin(2t - \pi/4)');
xlabel('t(sec)');
ylabel('z(t)');
grid on;
