function [L, U] = lup(A, b)
  [n,_] = size(A);
  L = eye(n);
  I = eye(n);
  for k = 1: n - 1
    t = zeros(n, 1);
    t(k + 1 : n) = A(k + 1 : n, k) ./ A(k, k); 
    e = zeros(1, n); e(k) = 1;
    A = (I - t * e) * A;
    L = L * (I + t * e);
  endfor
  U = A;
endfunction
