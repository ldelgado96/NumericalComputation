f=@(x)2*sin(x)-exp(x)/(4-1);
%figure(1);
%visualizing the function
%fplot(f,[-7,-5]);grid on
%Visualizing the function
%figure(2);
%fplot(f,[-5,-3]);grid on

function root = Bisection(fun,x1,x2,capacity)
varcheck=x1*x2;
if(varcheck<0)
    flag=0;
else if(fun(x1)*fun(xhalf)<0)
        flag=1;
        
    elseif(fun(x1)*fun(xhalf)>0)
        x1=xhalf;
    else
        root=0;
    end
end
    xhalf=(x1+x2)/2;
    fun(xhalf);
    x2=xhalf;
if(root==0)
    disp('Terminated');
end
switch option
    case 1
        %aae=absolute approximation error
        aae=abs(x2-x1);
        if (aae<=threshold)
            root=x3;
        else
            x3=(x1+x2)/2;
            fun=fun(x1);
            f
end

end



%let the interval for the first root be btw [-7,-5]
%let the interval for the second root be btw [-5,-3];

