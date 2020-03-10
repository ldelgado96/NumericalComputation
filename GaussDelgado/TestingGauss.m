disp("Matrix A");
disp("---------------------");
A=GaussGiven([3 1 -4 7; -2 3 1 -5;2 0 5 10]);
disp("Matrix A Values");
disp(A);
disp("Plug and Check");
x=A(1);
y=A(2);
z=A(3);

Answer1=3*x+y+(-4*z);
Answer2=-2*x+3*y+z;
Answer3=2*x+0*y+(5*z);
Answers1=[Answer1,Answer2,Answer3];
disp(Answers1);

disp("Matrix B");
disp("-------------------");
B=GaussGiven([1 -2 4 6; 8 -3 2 2;-1 10 2 4]);
x=B(1);
y=B(2);
z=B(3);

disp("Matrix B Values");
disp(B);
Answer4=1*x+-2*y+(4*z);
Answer5=8*x+-3*y+(2*z);
Answer6=-1*x+10*y+(2*z);
disp("Plug and Check");
Answers2=[Answer4,Answer5,Answer6];
disp(Answers2);