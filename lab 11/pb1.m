A = diag(3*ones(6, 1), 0) + diag(-ones(5, 1), +1) + diag(-ones(5, 1), -1)
b = [2; ones(4, 1); 2];

X = jacobi(A, b, 10^(-4))
X = jacobbi_2(A, b, 10^(-4))
X = gauss(A, b, 10^(-4))