function X = jacobi(A, b, err)
  n = length(b);
  x_new = ones(n, 1);
  x_old = ones(n, 1);
  iter = 0
  for i = 1:n
      x_new(i) = 1 / A(i, i) * ( b(i) - A(i, 1 : i - 1) * x_new(1 : i - 1) - A(i, i + 1 : n) * x_old(i + 1 : n));
    endfor
  while norm(x_new - x_old) > err
    x_old = x_new;
    for i = 1:n
      x_new(i) = 1 / A(i, i) * ( b(i) - A(i, 1 : i - 1) * x_new(1 : i - 1) - A(i, i + 1 : n) * x_old(i + 1 : n));
    endfor
   iter = iter + 1;
  endwhile
  iter
  X = x_new;
endfunction
