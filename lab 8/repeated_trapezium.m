function T = repeated_trapezium(f, a, b, n)
  x = linspace(a, b, n + 1);
  T = (b - a) ./ (2 .* n) .* ( f(a) + f(b) + 2 .* sum(f(x(2:n-1))));
endfunction