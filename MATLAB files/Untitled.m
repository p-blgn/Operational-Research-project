% u1 = [1 2 3];
% u2 = [-5 2 1];
% u3 = [-1 -3 7];
% A0 = [2 3 4; 7 6 5; 2 8 7];
% produit = A0*u1';
% n12 = norm(u1,2);
% n21 = norm(u2,1);
% n3inf = norm(u3,Inf);
% n_co = size(A0);
% n_co = n_co(2);
% inverse = inv(A0);
% determinant = det(A0);
% x1 = inverse*u1';
% x2 = A0\u1;


% N = 100;
% h = 1/(N + 1);
% A1 = matrice(N,h);
% f = ones(N,1);
% u = A1\f;

% x = 0:1:20;
% x = x*pi/10;
% y1 = sin(x);
% y2 = cos(x);
% plot(x,y1);
% grid on;
% hold on;
% plot(x,y2);

A = [0 1 10; 2 0 6; 5 6 0];
s = 1;
t = 3;
di = dijkstra(A,s,t);