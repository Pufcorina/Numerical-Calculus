function I = rectangle_quadrature(f, a, b)
  I = (b - a) * f( (a + b) / 2 ); 
endfunction
