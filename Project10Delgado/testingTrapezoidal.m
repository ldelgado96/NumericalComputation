x=[1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8];
f=[1.543,1.669,1.811,1.971,2.151,2.352,2.577,2.828,3.107];
h=0.1;
n=8;
disp("Trapezoidal Method")
output=trapezoidalRule(f,h);
disp(output);
disp("Simpsons Rule");
output2=simpsonsRulet(f,x,h,n);
disp(output2);