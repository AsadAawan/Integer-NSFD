%Defining the values of invovled parameters 
a = 3; b = 14; c = 3.9; 
%Initial conditions
t0 = 0; x0 = 0.2; y0 = 0.4; z0 = 0.2;
t(1) = t0; x(1) = x0; y(1) = y0; z(1) = z0;
%step size and number of iteration
 N = 10000; h = 80/N;
 f1 = (exp(a*h)-1)/(a); f2 = exp(h)-1; f3 = (exp(c*h)-1)/(c);
 for i = 1:N;
    t(i+1) = t(i)+h;
    x(i+1) = (f1*(a*y(i)+b*y(i)*z(i))+x(i))/(1+a*f1);                                                                             
    y(i+1) = (f2*(4*x(i+1)*z(i))+y(i))/(f2*(10*(y(i))^2+1)+1);
    z(i+1) =  f3*(c*z(i)-x(i+1)*y(i+1))+z(i);
 end
plot (t, x)