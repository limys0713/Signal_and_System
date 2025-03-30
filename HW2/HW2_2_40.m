% Response of an LTI system to x[n] = cos(nπ/6)u[n]
n = 0:20;
x = cos(n * pi / 6);  % Input x[n] = cos(nπ/6)u[n]
h = (0.6).^n;  % Impulse response

y = conv(x, h);  % Convolution
ny = 0:length(y)-1;

% Plot the graph
figure;
stem(ny, y, 'filled');
xlabel('n'); 
ylabel('y[n]');
title('Response of System to x[n] = cos(nπ/6)u[n]');
grid on;
