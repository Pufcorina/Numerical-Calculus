A = [ 10 7 8 7;
      7 5 6 5;
      8 6 10 9;
      7 5 9 10 ];

b = [ 32;
      23;
      33;
      31 ];

x = A \ b

cond(A)

bb = [ 32.1;
      22.9;
      33.1;
      30.9 ];

xx = A \ bb;
      
inp_rel_err = norm(b - bb) / norm(b)
out_rel_err = norm(x - xx) / norm(x)

err = out_rel_err / inp_rel_err 



AA = [ 10 7 8.1 7.2;
      7.08 5.04 6 5;
      8 5.98 9.89 9;
      6.99 4.99 9 9.98 ];
      
xxx = AA \ b;
      
inp_rel_err = norm(A - AA) / norm(A)
out_rel_err = norm(x - xxx) / norm(x)

err = out_rel_err / inp_rel_err 