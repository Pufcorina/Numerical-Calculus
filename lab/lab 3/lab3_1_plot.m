function L = lab3_1_plot(x, y, X)
  m = length(x);
  A = ones(1, m);
  for i=1:m
    A(i) = 1/prod(x(i) - x([1:i-1, i+1:m]));
  endfor
  for k=1:length(X)
    s1 = sum((A.*y)./(X(k)-x));
    s2 = sum(A./(X(k)-x));
    L(k) = s1/s2;
  endfor
##  s1 = sum((A.*y)./(X-x));
##  s2 = sum(A./(X-x));
##  L = s1/s2;
  
endfunction