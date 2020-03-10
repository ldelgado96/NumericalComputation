function root = FalsoProposition(f,x,x1,delta,flag)
if(f(x)*f(x1)>0)
    disp("Please pick other points");
else 
    count=0;
    f0=f(x);
    f1=f(x1);
    x2=x1-(f1*((x-x1))/(f1-f0));
    if(f0*f(x2)<0)
        x1=x2;
    else
        x=x2;
    end
    %if(x2==0)
    switch flag
        case 0
            error=abs(x-x1);
            while(error>=delta)
                prevError = error;
                x2=x1-f(x1)*((x-x1)/(f(x)-f(x1)));
                    if(f(x)*f(x2)<0)
                         x1=x2;
                    else
                        x=x2; 
                    end
                    count=count+1;
                    error=abs(x-x1);
                    fprintf('%i            %.6f      %.6f\n', count,x2,error);
                    if(error==prevError)
                        break
                    end
            end
            root=x2;
            %disp(count);
        case 1
            error=abs(x1-x)/abs(x1);
            while(error>=delta)
             prevError = error;
                x2=x1-f(x1)*((x-x1)/(f(x)-f(x1)));
                    if(f(x)*f(x2)<0)
                        x1=x2;
                    else
                    x=x2;
                    end
                    error=abs(x1-x)/abs(x1);
                    count=count+1;
                    fprintf('%i            %.6f      %.6f\n', count,x2,error);
                    if(error==prevError)
                        break
                    end
            end
            root=x2;
            %disp(count);

            
        case 2
            error=abs(f(x2));
            while(error>=delta)
                prevError=error;
                x2=x1-f(x1)*((x-x1)/(f(x)-f(x1)));
                    if(f(x)*f(x2)<0)
                         x1=x2;
                    else
                        x=x2;
                    end
                    error=abs(f(x2));
                    count=count+1;
                    fprintf('%i            %.6f      %.6f\n', count,x2,error);
                    if(error==prevError)
                        break
                    end
            end      
            root=x2;
            %disp(count)
    end
end
end
