C = sparse(6,6);
C(1,2) = 16;
C(1,3) = 13;
C(2,3) = 10;
C(2,4) = 12;
C(3,2) = 4;
C(3,5) = 14;
C(4,3) = 9;
C(4,6) = 20;
C(5,4) = 7;
C(5,6) = 4;

centers = [0 0;3 3;3 -3;6 3;6 -3;10 0];
radii = 0.4*ones(6);