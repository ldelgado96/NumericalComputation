function root = secantFunction2(f,x,x1,delta,flag)
%f is for my function test, although given, would be ideal to pass
%any function and estimate the root
if(x<x1)
    xtemp=x;
    x=x1;
    x1=xtemp;
end

%finding x2;
x2=x1-f(x1)*((x-x1)/(f(x)-f(x1)));
x=x1;
x1=x2;
%flag(0,1,2);
%0-abs approximate error
%1-relative appproximate error
%2- estimate of true error
count=0;
if(x2==0)
    root=x2;
else
    switch flag
        case 0
            error=abs(x-x1);
            while(error>=delta)
                x2=x1-f(x1)*((x-x1)/(f(x)-f(x1)));
                x=x1;
                x1=x2;
                error=abs(x-x1);
                count=count+1;
                fprintf('%i            %.6f      %.6f\n', count,x2,error);
            end
            root=x2;
            
        case 1
            error=abs(x1-x)/abs(x1);
            while( error>=delta)
                
                x2=x1-f(x1)*((x-x1)/(f(x)-f(x1)));
                x=x1;
                x1=x2;
                count=count+1;
                error=abs(x1-x)/abs(x1);
                fprintf('%i            %.6f      %.6f\n', count,x2,error);
            end
            root=x2;
        case 2
            error=abs(f(x2));
            while(error>=delta)
                x2=x1-f(x1)*((x-x1)/(f(x)-f(x1)));
                x=x1;
                x1=x2;
                count=count+1;
                error=abs(f(x2));
                fprintf('%i            %.6f      %.6f\n', count,x2,error);
            end
            root=x2;
    end
end

    
%false position method 