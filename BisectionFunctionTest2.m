function root = BisectionFunctionTest2(f,x1,x2,threshold,Option)
if(f(x1)*f(x2)<0)
    xhalf=(x1+x2)/2;
    fhalf=f(xhalf);
    if(fhalf>0)
        x2=xhalf;
    else
        x1=xhalf;
    end
    count=0;
    switch Option
        case 1 
            error=abs(x2-x1);
            while(error>threshold)
                xhalf=(x1+x2)/2;
                fhalf=f(xhalf);
                if(f(x1)*fhalf<0)
                    x2=xhalf;
                elseif(f(x1)*fhalf>0)
                    x1=xhalf;
                end
                count=count+1;
                fprintf('%i            %.6f      %.6f\n', count,xhalf,error);
                error=abs(x2-x1);
            end
            root=xhalf;
            %disp(count);
        case 2
            error=abs((x2-x1)/abs(xhalf));
            while(error>threshold)
                xhalf=(x1+x2)/2;
                fhalf=f(xhalf);
                if(f(x1)*fhalf<0)
                    x2=xhalf;
                elseif(f(x1)*fhalf>0)
                    x1=xhalf;
                end
                count=count+1;
                fprintf('%i            %.6f      %.6f\n', count,xhalf,error);
                error=abs((x2-x1)/abs(xhalf));
            end
            root =xhalf;
            %disp(count);
            
        case 3
            error=abs(f((x1+x2)/2));
            while(abs(f(x1+x2)/2)>threshold)
                %preError=error;
                xhalf=(x1+x2)/2;
                f(xhalf);
                if(f(x1)*f(xhalf)<0)
                    x2=xhalf;
                else 
                    x1=xhalf;
                end
                count=count+1;
                fprintf('%i            %.6f      %.6f\n', count,xhalf,error);
                error=abs(f((x1+x2)/2));
            end
            root=xhalf;
            %disp(count);
    end
else
    disp("Select another interval");
end
end


