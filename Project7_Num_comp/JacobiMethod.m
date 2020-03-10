function [answer]= JacobiMethod(a,vec, tol, stop)
%x=vec;
L=length(a);
b=a(:,L);
newMatrix=a(:,:);
newMatrix(:,L)=[];
a=newMatrix;
n=L-1;
for i=1:n
    b(i)=b(i)/a(i,i);
    new_x(i)= a(i);
for j=1:n
    if(i ~=j)
        a(i,j)=a(i,j)/a(i,i);
    end
end
end
count=0;
switch stop
    case 1
        error=10;
        while(error>tol)
            error=0;
            for i=1:n
                old_x(i)=new_x(i);
                new_x(i)=b(i);
            end
            for i=1:n
                for j=1:n
                    if(i~=j)
                        new_x(i)=new_x(i)-a(i,j)*old_x(j);
                    end
                end
                error=error+abs(new_x(i)-old_x(i));
                count=count+1;
                fprintf('%i   %.6f   %.6f   %.6f    %.6f\n', count,new_x(1),new_x(2),new_x(3),error);
            end
            error=error/n;
            answer=[new_x(1),new_x(2),new_x(3)];
        end
    case 2
        error=10;
        while(error>tol)
            error=0;
            for i=1:n
                old_x(i)=new_x(i);
                new_x(i)=b(i);
            end
            for i=1:n
                for j=1:n
                    if(i~=j)
                        new_x(i)=new_x(i)-a(i,j)*old_x(j);
                    end
                end
                error=error+(new_x(i)-old_x(i))^2;
                count=count+1;
                fprintf('%i   %.6f   %.6f   %.6f    %.6f\n', count,new_x(1),new_x(2),new_x(3),error);
            end
            error=sqrt(error/n);
            answer=[new_x(1),new_x(2),new_x(3)];
        end
end

