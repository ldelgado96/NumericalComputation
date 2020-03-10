function root = secantFunction(f,x,x1,delta,flag)
%f is for my function test, although given, would be ideal to pass
%any function and estimate the root
x2=x1-f(x1)*((x-x1)/(f(x)-f(x1)));
x=x1;
x1=x2;

count=0;
if(x<x1)
    xtemp=x;
    x=x1;
    x1=xtemp;
end
if(flag==0)
    error=abs(x1-x);
elseif(flag==1)
    error=abs(x1-x)/abs(x1);
else
    error=abs(f(x2));
end

while(error>=delta)
    x2=x1-f(x1)*((x-x1)/(f(x)-f(x1)));
    x=x1;
    x1=x2;
    
    switch(flag)
        case 0
            if(abs(x1-x)<=delta)
                root=x2;
                count=count+1;
                fprintf('%i            %.6f      %.6f\n', count,x2,abs(x1-x));
                break;
            end
        case 1
            if(abs(x1-x)/abs(x1)<=delta)
                root=x2;
                count=count+1;
                fprintf('%i            %.6f      %.6f\n', count,x2,abs(x1-x)/abs(x1));

                break;
            end
                
        case 2
            if(abs(f(x2))<=delta)
                root=x2;
                count=count+1;
                err=abs(f(x2));
                fprintf('%i            %.6f      %.6f\n', count,x2,err);

                break;
            end
                
    end
    
end


end



    
%false position method 