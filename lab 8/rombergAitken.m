function T = rombergAitken(f, i, prev, a, b, eps)
  current = linspace(0, 0, i);
  current(1) = repeated_trapezium(f, a, b, i);
  
  for j = 2 : i
    current(j) = (4^(-j) * prev(j - 1) - current(j - 1)) / (4^(-j) - 1); 
  endfor
  
  if (abs(current(i) - prev(i-1)) > eps)
    T = rombergAitken(f, i + 1, current, a, b, eps);
  else
    T = current(i);
  endif
endfunction
