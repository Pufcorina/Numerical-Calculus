x = 1;

function H = Hilber(n)
  H = ones(n);
  for i = 1:n
    for j = 1:n
      H(i, j) = 1 / (i + j - 1);
    end
  end
end

for n = 10:15
  cond(Hilber(n))
end