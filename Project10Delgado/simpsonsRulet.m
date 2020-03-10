function integral=simpsonsRulet(fx,xvalues,h,n)
% n must be even
%n=length(fx); it was given
r=rem(n,2);
if(r~=0)
    n=n-1;
end
% a=xvalues(1);
lastNum=length(xvalues);
% b=xvalues(lastNum);
% h=(b-a)/n;
answer=0;
for i=1:(n/2)-1
    answer=answer+(fx(2*i));
end
answer2=0;
for i=1:(n/2)
    answer2=answer2+(fx((2*i)-1));
end
integral=(h/3)*(fx(1)+2*answer+4*answer2+fx(lastNum));
end

