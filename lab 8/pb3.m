f = @(x) 100 ./ (x.^2) .* sin(10 ./ x);
x = linspace(1,3,100);
eps = 10^(-4);

a = 1;
b = 3;
y = f(x);

plot(x, y);
fprintf("Adaptive quadrature: %.6f\n", adaptiveQuadrature(f, a, b, eps));
fprintf("Repeated_simpsone for %d: %.6f\n", 50, repeated_simpson(f, a, b, 50));
fprintf("Repeated_simpsone for %d: %.6f\n", 100, repeated_simpson(f, a, b, 100));

