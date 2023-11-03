function lien(r1,x1,y1,r2,x2,y2,n,c)
if x2>x1
    alpha = atan((y2-y1)/(x2-x1));
elseif x2<x1
    alpha = atan((y2-y1)/(x2-x1)) + pi;
else
    if y2>y1
        alpha = pi/2;
    else
        alpha = -pi/2;
    end
end
diffx = (x2-cos(alpha)*r2)-(x1+cos(alpha)*r1);
diffy = (y2-sin(alpha)*r2)-(y1+sin(alpha)*r1);
longueur = sqrt(diffx*diffx + diffy*diffy);
x = [x1 + cos(alpha)*r1 (x2-cos(alpha)*r2)];
y = [y1 + sin(alpha)*r1 (y2-sin(alpha)*r2)];
plot(x,y,c);
gamma1 = pi-(pi-alpha-pi/7);
gamma2 = alpha-pi/7;
x = [x2 - cos(alpha)*r2 x2 - cos(alpha)*r2-longueur*cos(gamma1)/5];
y = [(y2 - sin(alpha)*r2) (y2 - sin(alpha)*r2)-longueur*sin(gamma1)/5];
plot(x,y,c);
x = [x2 - cos(alpha)*r2 x2 - cos(alpha)*r2-longueur*cos(gamma2)/5];
y = [(y2 - sin(alpha)*r2) (y2 - sin(alpha)*r2)-longueur*sin(gamma2)/5];
plot(x,y,c);
if alpha > pi
    angle = alpha - pi;
else
    angle = alpha;
end
h = text((2*x1+x2)/3 - sin(angle)*r1/2,(2*y1+y2)/3 + cos(angle)*r1/2,num2str(n));
set(h,'Rotation',angle*180/pi);
grid on;
axis equal;
hold on;