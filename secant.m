function[x,fx,n] = secant(fun, dfun, a, b, tol)

x = a;
a = Inf;
dfb = feval(dfun, b);
n = 0;

while abs(x - a) > tol
    a = x;
    
    dfa = feval(dfun, a);
    
    x = a - dfa(a - b)/(dfa - dfb);
    
    b = a;
    dfb = dfa;
    
    n = n + 1;
end

fx = feval(fun, x);