function root = BisectionFunctionTest(f,x1,x2,threshold,Option)
%find x half
x3 = (x1 + x2)/2;
f1 = f(x1); %evaluating the function with value x1
%evaluating f(xhalf)
mean = f(x3); 
%we use this to determine if our 
%root lies in the upper or lower interval 
fproduct = mean * f1; 
root = x3;       
 

if fproduct < 0 % upper subinterval
    x2 = x3;
elseif fproduct > 0 % lower subtinterval
    x1 = x3;
else
    root = x3;  
end
 
switch Option %Need to give options to the user
    case 1
        disp('Option 1: Absolute Approximation Error');
 %abolsute approximation error
aae = abs((x2 - x1));
count=0;
%we need to stop when x1 snd x2, are close to 0
%i tried doing the while loop but terminated on first round
for i=1:10
    count=count+1;
    if aae <= threshold
        root = x3;
        aae = abs((x2 - x1));
    else 
        x3 = (x1 + x2)/2;
        f1 = f(x1);
        mean = f(x3);
        fproduct = mean * f1;     
        root = x3;
        %displaying the iterations to see what is going on
        0
        if fproduct < 0
            x2 = x3;
        elseif fproduct > 0
                x1 = x3;
        else
            root = x3;
        end   
    end 
end
 
fprintf('Error: %f\n', aae);
    case 2
        disp('Option 2: Absolute Relative Error');
        %approximation relative error
        are = abs((x2 - x1))/abs(x3);% denominator (x+x2/2)
        count1=0;
        for i=1:10
            count1=count1+1;
            are = abs((x2 - x1))/abs(x3);
        if are <= threshold
            root = x3;
            break;
        else 
            x3 = (x1 + x2)/2;
            f1 = f(x1);
            mean = f(x3);
            fproduct = mean * f1;     
            root = x3;  
            fprintf('%i             %.6f    %.6f    %.6f      %.6f     %.6f\n', count1,x1,x2,mean,root,fproduct);
            if fproduct < 0
                x2 = x3;
            elseif fproduct > 0
                x1 = x3;
            else
                root = x3;
            end   
        end
        end
        fprintf('Error is: %f\n', are);
    case 3
        disp('Option 3: Absolute True Error');
        %approximation true error
        ate = abs(f(x3));
        count2=0;
        %while(aae>=threshold) go onto infinity
        for i=1:10
            count2=count2+1;
            ate = abs(f(x3));
        if ate < threshold
            root = x3;
        else          
            x3 = (x1 + x2)/2;
            f1 = f(x1);
            mean = f(x3);
            fproduct = mean * f1;     
            root = x3;
            fprintf('%i             %.6f    %.6f    %.6f      %.6f     %.6f\n', count2,x1,x2,mean,root,fproduct);
            if fproduct < 0 % upper bound 
                x2 = x3;
            elseif fproduct > 0 % lower bound
                x1 = x3;
            else
                root = x3; %being equal;
            end
        end
        end
        fprintf('Error : %f\n', ate);
end
        
end  

 
