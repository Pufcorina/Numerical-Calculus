f = @(x) cos(x)
fd = @(x) -sin(x)

function ret = newton(f, fd, x0, N, err)
  for n = 1:N
    x1 = x0 - f(x0) / fd(x0);
    if abs(x1 - x0) < err
      n
      break
    end
    x0 = x1;
  end
  ret = x0
end

x = newton(f, fd,  pi/4, 100, 0.0001);

f = @(x) sin(x)
fd = @(x) cos(x)
x = newton(f, fd,  pi/2, 100, 0.0001);
