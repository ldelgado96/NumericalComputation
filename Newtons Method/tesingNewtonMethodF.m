disp("The First root");
root1=newtonMethodFinal(@(x) (4*x^2)-1-exp((x^2)/2),3,10^-6,0);
disp("---------------------------");
root2=newtonMethodFinal(@(x) (4*x^2)-1-exp((x^2)/2),3,10^-6,2);
disp("---------------------------");

disp("The second root");
root1=newtonMethodFinal(@(x) (4*x^2)-1-exp((x^2)/2),-6,10^-6,0);
disp("---------------------------");
root2=newtonMethodFinal(@(x) (4*x^2)-1-exp((x^2)/2),-6,10^-6,2);
disp("---------------------------");
