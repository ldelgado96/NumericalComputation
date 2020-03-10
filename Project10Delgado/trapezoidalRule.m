function integral=trapezoidalRule(fx,h)
%initially when i build the function, i didnt realize the h was given and
%solved for h, given x and its parameters, therefore the rest is comment
%out but could be used if its not given.

% n=length(fx);
% a=xvalues(1);
% lastNum=length(xvalues);
% b=xvalues(lastNum);
%h=(b-a)/n;

answer=0;
interval=length(fx);
for i=1:interval-1
    answer=answer+h*((fx(i)+fx(i+1))/2);
end
integral=answer;
%this wast the other way the poweroint also equaled to the integral without
%using h as a parameter and only a and b 
% answer=(fx(1)+answer+fx(lastNum));
% answer=answer/(2*n);
% answer=(b-a)*answer;
% integral=answer;
end
