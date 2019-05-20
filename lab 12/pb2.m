f = @(x) x ^ 3 - x ^ 2 - 1

function ret = secant(f, x0, x1, N, err)
  for n = 1:N
    if abs(x1 - x0) < err
      n
      break
    end
    x = x1 - (x1 - x0) / (f(x1) - f(x0)) * f(x1);
    x0 = x1;
    x1 = x;
  end
  ret = x1
end

x = secant(f, 0, pi/2, 100, 10^-7);


function ret = false_position(f, a, b, err)
  for n = 0:1000
    if abs(a - b) < err
      break
    end
    c = (a * f(b) - b * f(a)) / (f(b) - f(a));
    if f(a) * f(c) <= 0
      b = c;
    else
      a = c;
    end
  end
  ret = a
end

false_position(f, 1, 2, 0.0001);