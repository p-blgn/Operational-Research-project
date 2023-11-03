function A = mat(N,h)
A = sparse(N,N);
for i=1:1:N
    A(i,i) = 2;
end
for i=2:1:N
    A(i-1,i) = -1;
    A(i,i-1) = -1;
end
A = A/(h*h);