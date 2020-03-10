a=(123*2*pi)/360;
disp(a);

L=@(c)9/sin(pi-2.1468-c)+7/sin(c);
fplot(L,[0.4,0.5]); grid on
title('Ladder Problem');
xlabel('Angle c');
ylabel('Length of Ladder');

minNum=fminbnd(L,0.4,0.5);
disp(minNum);
%minimum of the function is

minNum2=L(0.467);
disp(minNum2);


fminbnd(L,0.4,0.5,optimset('Display','iter'))