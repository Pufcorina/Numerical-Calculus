function x = gauss(A, b)
  [_, n] = size(A);
  
  for p = 1 : n - 1
    [_, q] = max(abs(A(p:n, p)));
    q = q + p - 1;
    A([p, q], :) = A([q, p], :);
    b([p, q]) = b([q, p]);
  
    for i = p + 1 : n
      b(i) = b(i) - A(i, p) / A(p, p) * b(p);
      A(i, p : n) = A(i, p : n) - A(i, p) / A(p, p) * A(p, p : n);
    endfor
  endfor
  A
  b
  x = bwdsubs(A, b);
endfunction
