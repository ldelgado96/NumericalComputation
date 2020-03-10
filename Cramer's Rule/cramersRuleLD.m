%The only input in the argument should be the augmented matrix
function [solution] = cramersRuleLD(A)
disp(A);
L=length(A);
%disp(L);
b=A(:,L);
%disp(b);
%needed to seperate the last column
newMatrix=A(:,:);
newMatrix(:,L)=[];
size = length(b);
%a vector containing solution should be returned
vectorA=[];
D = det(newMatrix);
if newMatrix == 0
    error('No Solution')
elseif D == 0
    error('The matrix is singular, Determinant =0')
end
for i = 1:size
    replacement = newMatrix;
    replacement(:,i)=b;
    vectorA(i)=(det(replacement)/D);
end
solution = vectorA;
