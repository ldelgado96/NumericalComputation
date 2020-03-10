fprintf('Case 0: Absolute Error \n');
root1=secantFunction2(@(x) 2*sin(x)-exp(x)/4-1,-7,-5,10^-6,0);
fprintf('Root:  %f \n',root1);
disp('----------------------------');
fprintf('Case 1: Absolute Relative \n');
root2=secantFunction2(@(x) 2*sin(x)-exp(x)/4-1,-7,-5,10^-6,1);
fprintf('Root:  %f \n',root2);
disp('----------------------------');
fprintf('Case 2: Absolute True Error \n');
root=secantFunction2(@(x) 2*sin(x)-exp(x)/4-1,-7,-5,10^-6,2);
fprintf('Root:  %f \n',root);
disp('----------------------------');

fprintf('Case 0: Absolute Error \n');
root3=secantFunction2(@(x) 2*sin(x)-exp(x)/4-1,-5,-3,10^-6,0);
fprintf('Root:  %f \n',root3);
disp('----------------------------');
fprintf('Case 1: Absolute Relative \n');
root4=secantFunction2(@(x) 2*sin(x)-exp(x)/4-1,-5,-3,10^-6,1);
fprintf('Root:  %f \n',root4);
disp('----------------------------');
fprintf('Case 2: Absolute True Error \n');
root5=secantFunction2(@(x) 2*sin(x)-exp(x)/4-1,-5,-3,10^-6,2);
fprintf('Root:  %f \n',root5);
disp('----------------------------');


fprintf('The Following is the same function, Testing with The False Proposition Method, [-7,-5] &[-5,-3 ]\n\n');

fprintf('Case 0: Absolute Error \n');
root1=FalsoProposition(@(x) 2*sin(x)-exp(x)/4-1,-7,-5,10^-6,0);
fprintf('Root:  %f \n',root1);
disp('----------------------------');
fprintf('Case 1: Absolute Relative \n');
root2=FalsoProposition(@(x) 2*sin(x)-exp(x)/4-1,-7,-5,10^-6,1);
fprintf('Root:  %f \n',root2);
disp('----------------------------');
fprintf('Case 2: Absolute True Error \n');
root=FalsoProposition(@(x) 2*sin(x)-exp(x)/4-1,-7,-5,10^-6,2);
fprintf('Root:  %f \n',root);
disp('----------------------------');

fprintf('Case 0: Absolute Error \n');
root3=FalsoProposition(@(x) 2*sin(x)-exp(x)/4-1,-5,-3,10^-6,0);
fprintf('Root:  %f \n',root3);
disp('----------------------------');
fprintf('Case 1: Absolute Relative \n');
root4=FalsoProposition(@(x) 2*sin(x)-exp(x)/4-1,-5,-3,10^-6,1);
fprintf('Root:  %f \n',root4);
disp('----------------------------');
fprintf('Case 2: Absolute True Error \n');
root5=FalsoProposition(@(x) 2*sin(x)-exp(x)/4-1,-5,-3,10^-6,2);
fprintf('Root:  %f \n',root5);
disp('----------------------------');

