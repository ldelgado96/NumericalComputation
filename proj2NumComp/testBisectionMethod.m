
root1=BisectionFunctionTest(@(x)2*sin(x)-exp(x)/(4-1),-5,-3,10^-6,1);
disp(root1);
root2=BisectionFunctionTest(@(x)2*sin(x)-exp(x)/(4-1),-5,-3,10^-6,2);
disp(root2);
root3=BisectionFunctionTest(@(x)2*sin(x)-exp(x)/(4-1),-5,-3,10^-6,3);
disp(root3);
%figure(1);
%visualizing the function
%fplot(f,[-7,-5]);grid on
%title('F(x)=2*sin(x)-exp(x)/(4-1), Intervals [-7,-5]');
%Visualizing the function
% figure(2);
% fplot(f,[-5,-3]);grid on
% title('F(x)=2*sin(x)-exp(x)/(4-1), Intervals [-5,-3]');


