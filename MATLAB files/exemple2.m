A = sparse(10,10);
A(1,2) = 1;
A(1,3) = 2;
A(1,4) = 3;
A(2,5) = 5;
A(2,7) = 4;
A(3,2) = 7;
A(3,4) = 8;
A(3,6) = 6;
A(4,6) = 9;
A(5,3) = 10;
A(5,6) = 12;
A(5,7) = 11;
A(6,8) = 13;
A(6,9) = 14;
A(7,8) = 16;
A(7,10) = 15;
A(8,5) = 17;
A(8,10) = 18;
A(9,4) = 19;
A(9,8) = 21;
A(9,10) = 20;

centers = [0 0;3 3;3 0;3 -3;6 1.5;6 -1.5;9 3;9 0;9 -3;12 0];
radii = 0.5*ones(10,1);

Q = sparse(10,10);
Q(1,2) = 40;
Q(1,3) = 8;
Q(1,4) = 10;
Q(2,5) = 6;
Q(2,7) = 10;
Q(3,2) = 4;
Q(3,4) = 12;
Q(3,6) = 2;
Q(4,6) = 9;
Q(5,3) = 2;
Q(5,6) = 2;
Q(5,7) = 4;
Q(6,8) = 4;
Q(6,9) = 3;
Q(7,8) = 20;
Q(7,10) = 1;
Q(8,5) = 0;
Q(8,10) = 20;
Q(9,4) = 6;
Q(9,8) = 10;
Q(9,10) = 2;

q = 30;