x = [81 100 144];
y = [9 10 12];

function L = polyinterp(x, y, X)
  m = length(x);
  A = ones(1, m);
  for i = 1:m
    A(i) = 1 ./ prod(x(i) - x([1:i-1, i+1:m]));
    L = sum(A .* y ./ (X' - x)) ./ sum(A ./ (X' - x));
  endfor
endfunction

polyinterp(x, y, 115)