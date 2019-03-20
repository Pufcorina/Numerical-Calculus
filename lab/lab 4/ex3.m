x = linspace(0, 6, 13);
f = @(x) exp(sin(x));
y = f(x);

X = linspace(0, 6, 200);
Y = newtonInterp(x, y, X);
plot(X, Y)


