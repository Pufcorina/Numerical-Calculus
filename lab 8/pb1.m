f = @(x) exp(-x.^2);
a = 1;
b = 1.5;


# a)
fprintf('Rectangle formula: %f\n', rectangle_quadrature(f, a, b));

# b)

figure
subplot(2, 1, 1)
x = a:0.001:b;
y = f(x);
hold on
plot(x, y)

xx = [1 1.5 1.5 1 1];
yy = [0 0 f(1.25) f(1.25) 0];
plot(xx,yy,'r-');

# c)

subplot(2, 1, 2)
hold on
plot(x, y)

xx = [1 1.5 1.5 1 1];
yy = [0 0 f(1.5) f(1.5) 0];
plot(xx,yy,'r-');

fprintf('Repeated rectangle formula for %d: %f\n', 50, repeated_rectangle_quadrature(f, a, b, 50));
fprintf('Repeated rectangle formula for %d: %f\n', 500, repeated_rectangle_quadrature(f, a, b, 500));