X = linspace(1, 4, 100);
x = [1, 1.5, 2, 3, 4];
f = [0, 0.17609, 0.30103, 0.47712, 0.60206];
plot(X, newtonInterp(x, f, X));
