function N = newtonInterp(x, f, X)
  T = divDiff(x, f);
  C = T(1, :);
  
  m = length(x);
  n = length(X);
  N = ones(size(X));
  for i = 1 : n
    N(i) = C * cumprod([1, X(i) - x(1:end-1)])';
  endfor
endfunction
