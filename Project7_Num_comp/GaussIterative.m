function [answer]= GaussIterative(a,vec, tol, stop)
x=vec;
L=length(a);
b=a(:,L);
newMatrix=a(:,:);
newMatrix(:,L)=[];
a=newMatrix;
n=L-1;
for i=1:n
    b(i)=b(i)/abs(a(i,i));
    new_x(i)= a(i);
    old_x(i)=x(i);
    
for j=1:n
    if(i ~=j)
        a(i,j)=a(i,j)/a(i,i);
    end
end
end
switch stop
    case 1
        error=10;
        count=0;
        while (error>tol)
            error=0;
            for i=1:n 
                x(i)=b(i);
                for j=1:n
                    if(i~=j)
                        x(i)=x(i)-a(i,j)*x(j);
                    end
                end
                error=error+abs(x(i)-old_x(i));
                old_x(i)=x(i);
                count= count+1;
                fprintf('%i   %.6f   %.6f   %.6f    %.6f\n', count,x(1),x(2),x(3),error);
                answer=[x(1),x(2),x(3)];
            end
            error=error/n;

        end 
    case 2
        error=10;
        count=0;
        while (error>tol)
            error=0;
            for i=1:n 
                x(i)=b(i);
                for j=1:n
                    if(i~=j)
                        x(i)=x(i)-a(i,j)*x(j);
                    end
                end
                error=error+(x(i)-old_x(i))^2;
                old_x(i)=x(i);
                count= count+1;
                fprintf('%i   %.6f   %.6f   %.6f    %.6f\n', count,x(1),x(2),x(3),error);
                answer=[x(1),x(2),x(3)];
            end
            error=sqrt(error/n);
        end 
end
        

    
    



 




