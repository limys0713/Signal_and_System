%%% Problem 3.46: Use residue function to obtain inverse L trans. 
%%% H(s) = s2 + 6s + 10 / s3 + 7s2 + 11s + 5

num = [1 6 10]; % Numerator coef. in descending order
den = [1 7 11 5]; % Denominator

[r, p, k] = residue(num, den); % Call residue function
disp('r = ')
disp(r)
disp('p = ')
disp(p)
disp('k = ')
disp(k)