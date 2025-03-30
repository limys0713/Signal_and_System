%%% Response of an LTI system to x[n] = u[n]
n = 0:20;  
x = ones(size(n));  % Unit step input u[n]
h = (0.6).^n;  % Impulse response h[n] = (0.6)^n u[n]

y = conv(x, h);  % Convolution of x[n] and h[n]
ny = 0:length(y)-1;  % Length of convolution output

% Plot the graphS
figure;
stem(ny, y, 'filled');
xlabel('n'); 
ylabel('y[n]');
title('Response of System to x[n] = u[n]');
grid on;
