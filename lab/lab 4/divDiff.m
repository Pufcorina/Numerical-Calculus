function T = divDiff(x, f)
  n = length(x);
  T = [f', NaN * ones(n, n - 1)];
  for i = 2 : n
    T(1 : n - i + 1, i) = diff(T(1 : n - i + 2, i - 1)) ./ (x(i:n) .- x(1:n-i+1))';
  endfor
endfunction
