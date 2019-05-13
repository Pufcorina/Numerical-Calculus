function X = jacobbi_2(A, b, err)
  n = length(b);
  x_new = zeros(n, 1);
  x_old = zeros(n, 1);
  iter = 0;
  
  M = diag(diag(A)); N = M - A; T = M \ N; c = M \ b;
  x_new = T * x_old + c;

  while norm(x_new - x_old) > err
    x_old = x_new;
    M = tril(A); N = M - A; T = M \ N; c = M \ b;
    x_new = T * x_old + c;
    iter = iter + 1;
  endwhile
  iter
  X = x_new;
endfunction
