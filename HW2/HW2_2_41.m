%%% Finding h[n] using (a) a recursive algorithm and (b) deconvolution

% Given x[n] and y[n]
x = [1 -1 2 4];
y = [2 6 4 0 8 5 12];

%% (a) Compute h[n] using a recursive algorithm

N = length(y) - length(x) + 1; 
h_recursive = zeros(1, N);  

% Recursive calculation of h[n] based on the equation y[n] = x[n]h[n]
for n = 1:N
    % Base case for the first value of h[n] (y[0] =x[0]h[0])
    if n == 1
        h_recursive(n) = y(n) / x(1);
    else
        % Recursive computation 
        sum_term = 0;
        for k = 1:n-1
            if (n-k+1) <= length(x)
                sum_term = sum_term + h_recursive(k) * x(n-k+1);
            end
        end
        h_recursive(n) = (y(n) - sum_term) / x(1);  
    end
end
disp('Impulse response h[n] (Recursive Method):');
disp(h_recursive);

%% (b) Compute h[n] using deconvolution

[h_deconv, r] = deconv(y, x);  % Use MATLAB deconv() function

disp('Impulse response h[n] (Deconvolution Method):');
disp(h_deconv);

