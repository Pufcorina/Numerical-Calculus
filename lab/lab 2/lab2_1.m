subplot(2,2,1)
l1=@(x) x
fplot(l1,[0,1])
title('Subplot 1: (x)')

subplot(2,2,2)
l2=@(x) (2/3*x.^2 - 1/2)
fplot(l2,[0,1])
title('Subplot 2: 2/3*x^2 - 1/2')

subplot(2,2,3)
l3=@(x) 5/2*x.^3 - 3/2.*x
fplot(l3,[0,1])
title('Subplot 3: 5/2*x^3 - 3/2*x')

subplot(2,2,4)
l4=@(x) 35/8*x.^4 - 15/4.*x.^2 + 3/8
fplot(l4,[0,1])
title('Subplot 4: 35/8*x^4 - 15/4*x^2 + 3/8')