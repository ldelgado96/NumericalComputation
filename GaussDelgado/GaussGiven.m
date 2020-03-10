function [x] = GaussGiven(A)
disp(A);
%GaussPP(A) solves the n-by-n linear system of equations using partial
%pivoting
%A is the augmented matrix
%
n = size(A,1); %number of rows in A setting it to variable n 
for i = 1:n-1 % for loop, from 1 - n, which is the size of A
    p = i; %p is equal to the increments of i
    %comparison to select the pivot
    for j = i+1:n % going from 2, to the value of n, which is described previously
        if abs(A(j,i)) > abs(A(i,i)) %searches for max in the colmn
            U = A(i,:); % sets the pivot value
            A(i,:) = A(j,:);
            A(j,:) = U;  %contains the column of the max num      
        end
    end

    while ((A(p,i)== 0) & (p <= n)) %checking for null pivots
        p = p+1;
    end
    if p == n+1
        disp('No unique solution');
        break
    else
        %swap, the largest element becomes piv element
        if p ~= i
            T = A(i,:);
            A(i,:) = A(p,:);
            A(p,:) = T; %contaning the row of the max value
        end
    end
    %making rows 0, not including the row we are in 
    for j = i+1:n
        m = A(j,i)/A(i,i);
        for k = i+1:n+1 
            A(j,k) = A(j,k) - m*A(i,k); %subtracting the 1 st equation 
            % to make the coefficients transformed and =0
        end
    end
end

%checking for non zero, for division purposes
if A(n,n) == 0
    disp('No unique solution');
    return
end

%backward subsitution
x(n) = A(n,n+1)/A(n,n);
for i = n - 1:-1:1 % going from the n decreasing to 1
    sumax = 0;
    for j = i+1:n
        sumax = sumax + A(i,j)*x(j);
    end
    x(i) = (A(i,n+1) - sumax)/A(i,i);
end


