f = @(x) (x - 2) ^ 2 - log(x);

bisectoare(f, 1, 2, 10^-4, 100)