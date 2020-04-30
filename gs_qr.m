function gs_qr

m=500;
n=200;

for times=1:20
    % generate A
    d=10.^(-5*(1:m)/m');
    A=diag(d)*randn(m,n);
    
    % Run standard Gram Schmidt
    [q1,r1]=GramSchmidt(A);
    % Compute the error of orghogonality of q1.
    err1(times)=norm(q1'*q1-eye(n),'fro');
    
    % Run standard Gram Schmidt
    [q2,r2]=ModifiedGramSchmidt(A);
    % Compute the error of orthogonality of q2.
    err2(times)=norm(q2'*q2-eye(n),'fro');
end

% Plot error against run times.
semilogy(err1,'*');
hold;
semilogy(err2,'+');
legend({'Standard Gram-Schmidt','Modified Gram-Schmidt'},'FontSize',16)


function [Q,R]=GramSchmidt(A)
[m,n]=size(A);
Q=A;
R=zeros(n,n);
for k=1:n
    %%%%%%%%%%%%%%%%%%%%%%
    % Add lines for standard Gram-Schmidt
   if k > 1
   for i = 1:k-1
        R(i,k) = transpose(Q(1:m,i))*A(1:m,k);
        Q(1:m,k) = Q(1:m,k) - R(i,k)*Q(1:m,i);
   end
   end
   R(k,k) = norm(Q(1:m,k));
   Q(1:m,k) = Q(1:m,k)/R(k,k);
    
    
    %%%%%%%%%%%%%%%%%%%%%%
end
end

function [Q,R]=ModifiedGramSchmidt(A)
[m,n]=size(A);
Q=A;
R=zeros(n,n);
for k=1:n
    %%%%%%%%%%%%%%%%%%%%%%%
    % Add lines for modified Gram-Schmidt
   if k > 1
   for i = 1:k-1
        R(i,k) = transpose(Q(1:m,i))*Q(1:m,k);
        Q(1:m,k) = Q(1:m,k) - R(i,k)*Q(1:m,i);
   end
   end
   R(k,k) = norm(Q(1:m,k));
   Q(1:m,k) = Q(1:m,k)/R(k,k);
    
    
    %%%%%%%%%%%%%%%%%%%%%%%
end
end

end