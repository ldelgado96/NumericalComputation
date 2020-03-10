function answer=Lagrange1(z,x,f)
interpolated_value=0;
n=2;
for i=1:(n+1)
    Lagrange=1;
    for j=1:(n+1)
        if(j~=i)
            Lagrange=Lagrange.*((z-x(j))/(x(i)-x(j)));
        end 
    end
interpolated_value=interpolated_value+(Lagrange*f(i));
end
answer=interpolated_value;
end

        