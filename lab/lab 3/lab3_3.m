x = [0:0.01:10];
f = @(x) 1 + cos(pi * x) ./ (1 + x);

plot(x, f(x))
hold on

function L = polyinterp(x, y, X)
  m = length(x);
  A = ones(1, m);
  for i = 1:m
    A(i) = 1 ./ prod(x(i) - x([1:i-1, i+1:m]));
    L = sum(A .* y ./ (X' - x)) ./ sum(A ./ (X' - x));
  endfor
endfunction

x = [0:(10/20):10];
X = [0:0.01:10];

Y = polyinterp(x, f(x), X);

hold on
plot(X, Y')