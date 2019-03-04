function taylor(N)
  clf;
  hold on;
  T = @(x) ones(size(x));
  fplot(T, [-1, 3]);
  for n = 1 : N
    T = @(x) T(x) + (x.^n) / factorial(n);
    fplot(T, [-1, 3]);
  endfor
  
  fplot(@exp, [-1, 3], '-r');
endfunction
