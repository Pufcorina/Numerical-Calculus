function I = repeated_rectangle_quadrature(f, a, b, n)
  x = linspace(a, b, n);
  I = (b - a) / n * sum(f(x(1:n)));
endfunction
