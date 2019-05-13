x = 1;

for n = 10:15
  cond(vander(1 ./ 1:n))
end


for n = 10:15
  cond(vander(-1 + (2 / n) * (1:n)))
end

 