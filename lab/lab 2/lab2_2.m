% a)

##hold on
##T1=@(t) cos(1.*acos(t))
##fplot(T1,[-1,1])
##
##T2=@(t) cos(2.*acos(t))
##fplot(T2,[-1,1])
##
##T3=@(t) cos(3.*acos(t))
##fplot(T3,[-1,1])

% b)

function x=pb2(N)
  clf; hold on;
  t0 = @(x) ones(size(x));
  fplot(t0, [-1,1])
  t1 = @(x) x;
  fplot(t1, [-1,1])
  
  for i=2:N
    aux = t1;
    t1 = @(x) 2*x.*t1(x)-t0(x);
    fplot(t1, [-1,1])
    t0=aux;
  endfor
endfunction