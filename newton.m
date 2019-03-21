function[x, fx, n] = newton(fun, dfun, d2fun, a, tol)

x = Inf;
n = 0;

while abs(x - a) > tol
	x = a;
	a = a - feval(dfun, x)/feval(d2fun, x);
    n = n + 1;
end
x = a;
fx = feval(fun,x);