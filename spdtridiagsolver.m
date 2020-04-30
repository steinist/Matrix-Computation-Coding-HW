% Generate T
n=500;
A=full(gallery('tridiag',n,-1,2,-1));

% Generate b
b=ones(n,1);

% Cholesky decomposition of A.
% Lower triangular part of A is overwritten by L.
for k=1:n
     %%%%%
     % Insert your lines
     if k == 1
         A(k,k) = sqrt(A(k,k));
     else
        A(k,k)= sqrt(A(k,k) - A(k,k-1)* A(k,k-1));
     end
     
     if k < n
        A(k+1,k) = A(k+1,k)/A(k,k);
     end
     
     %%%%%
end


% Forward substitution
% b is overwritten by the solution
for i=1:n
    %%%%%
    % Insert your lines
    if i == 1
        b(i) = b(i)/A(i,i);
    else
        b(i) = (b(i) - A(i, i-1)*b(i-1))/A(i,i);
    end
    %%%%%
end

% Backward substitution
% b is overwritten by the solution
for i=n:-1:1
    %%%%%
    % Insert your lines
    if i == n
        b(i) = b(i)/A(i,i);
    else
        b(i) = (b(i) - A(i+1,i)*b(i+1))/A(i,i);
    end
    %%%%%
end

% plot the solution
plot(b);
