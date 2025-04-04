%%% Problem 3.49 
%%% H(s) = 2s + 5 / (s + 2)(s + 3) = s2 + 5s +6
%%% Plot (a) Impulse response (b) Step response

num = [2 5];
den = [1 5 6];
t = 0: 0.1: 4; % Start: Gap: End
% Plot the graph
figure;
% (a)
subplot(2,1,1);
y_impulse = impulse(num, den, t);
plot(t, y_impulse);  
xlabel('time (t)');  
ylabel('Impulse Response');  
title('Impulse Response of 2s+5/(s+2)(s+3)'); 
grid on;
% (b)
subplot(2,1,2);
y_step = step(num, den, t);
plot(t, y_step);
xlabel('time (t)')
ylabel('Step Response')
title('Step Response of 2s+5/(s+2)(s+3)');
grid on;