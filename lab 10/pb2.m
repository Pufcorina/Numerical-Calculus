A = [ 6 2 1 -1;
      2 5 1 0;
      1 1 4 -1;
      -1 0 -1 3 ];
b = [8 ; 7; 5; 1];

[L, U] = lu(A);

y = fwdsubs(L, b);
x = bwdsubs(U, y);

[L, U] = lup(A)