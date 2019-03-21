function [x,f,it]=Powell(fun,x0,epsilon)
    n = length(x0);
    u = eye(n);
    x = x0; x1 = x0+2*epsilon;
    it = 0;
    while max(abs(x-x1)) > epsilon
        it = it+1;
        ti = x;
        for i = 1:n
            teta = parabola(fun,u(:,i),ti, 0.197,epsilon);
            ti = ti + teta*u(:,i);
        end
        u = [u(:,2:n) ti-x];
        x1 = x;
        teta = parabola(fun,u(:,n),ti, 0.197, epsilon);
        x = ti + teta*u(:,n);
    end
f = feval(fun,x);