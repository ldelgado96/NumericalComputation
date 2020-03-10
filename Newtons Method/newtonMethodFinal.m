%The Newtons Method;
function root= newtonMethodFinal(f,x0,thresh, flag)
syms x;
fprime=diff(f(x),x);
%disp(fprime);
f1=eval(subs(fprime,x0));
f0=f(x0);
if(f0==0)
    disp("No values");
elseif (f1==0)
    disp("choose another x0");
else
    x1=x0-(f0/f1);
end
count=0;
switch flag
    case 0
        error=abs(x0-x1);
        while(error>=thresh)
            x0=x1;
            x1=x0-(f(x0)/eval(subs(fprime,x0)));
            count=count+1;
            error=abs(x0-x1);
            fprintf('%i            %.6f      %.6f\n', count,x1,error);
        end
        root=x1;
    case 1
        error=abs(x1-x0)/abs(x1);
          while(error>=thresh)
            x0=x1;
            x1=x0-(f(x0)/eval(subs(fprime,x0)));
            count=count+1;
            error=abs(x1-x0)/abs(x1);
            fprintf('%i            %.6f      %.6f\n', count,x1,error);
          end
        root=x1;
    case 2
        error=abs(f(x1));
          while(error>=thresh)
            x0=x1;
            x1=x0-(f(x0)/eval(subs(fprime,x0)));
            count=count+1;
            error=abs(f(x1));
            fprintf('%i            %.6f      %.6f\n', count,x1,error);
          end
        root=x1;
end

    
end




    
    