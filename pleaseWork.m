
root1=BisectionFunctionTest(@(x)2*sin(x)-exp(x)/(4-1),-5,-3,10^-6,2);
figure(1);
%visualizing the function
fplot(f,[-7,-5]);grid on
%Visualizing the function
figure(2);
fplot(f,[-5,-3]);grid on
disp(root1);
