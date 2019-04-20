f = @(x) 2./(1 + x.^2);
a = 0;
b  = 1;
eps = 10^(-4);

q0 = (1 / 2) * (f(a) + f(b));
fprintf("Romberg (2): %.6f\n", romberg(f, q0, 1, a, b, eps));

T0 = repeated_trapezium(f, a, b, 1);
fprintf("Romberg (5): %.6f\n", rombergAitken(f, 2, T0, a, b, eps));
