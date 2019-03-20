function T = lab2_5(x, f)
  n = length(x);
  T = [f', NaN * ones(n, n - 1)];
  for i = 2 : n
    T(1 : n - i + 1, i) = diff(T(1 : n - i + 2, i - 1)) ./ (x(i:n) .- x(1:n-i+1))';
  endfor
  T = [x', T];
endfunction

##x1 = 1:0.25:2.5;
##f1 = @(x1) sqrt(5 * x1.^2 + 1);
##t2 = lab2_4(x1, f1);