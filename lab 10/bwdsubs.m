function x = bwdsubs(A, b)
  x = NaN(size(b));
  n = length(b);
  for i = n : -1: 1
    x(i) = 1 / A(i, i) * ( b(i) - A(i, i + 1 : n) * x(i + 1 : n));
  endfor
endfunction
