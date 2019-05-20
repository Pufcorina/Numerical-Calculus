function c = bisectoare(f, a, b, err, N)
  for i = 1 : N
    c = ( a + b ) / 2;
    if f(a) * f(c) <= 0
      b = c;
     else
      a = c;
    endif
    
    if abs(a - b) < err
      return
    endif
  endfor
endfunction
