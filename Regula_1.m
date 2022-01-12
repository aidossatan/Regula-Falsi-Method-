func = @(x) (668.06.*(1-exp(-0.146843.*x))./x)-40;
 
x_lower = 12;
x_upper = 16;
 
 
func_prime = (func(x_upper)-func(x_lower))/(x_upper-x_lower);
 
c = (func(x_upper).*x_lower-func(x_lower).*x_upper)/(func(x_upper)-func(x_lower));

disp('    x_lower    x_upper    c    f(c)')

while (c == 0 || x_upper-x_lower > 0.01)
    
    disp([x_lower', x_upper', c', func(c)',])
    if (func(c) * func(x_lower)) < 0
        x_upper = c;
    else 
        x_lower = c;
    end 
    c = (func(x_upper).*x_lower-func(x_lower).*x_upper)/(func(x_upper)-func(x_lower));
    
end 
 
fprintf('The root of the function is %5.4f', c)
