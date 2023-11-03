function Cercle(r,x,y,i,c)
t = 0:pi/20:2*pi;
x1 = r*cos(t) + x;
y1 = r*sin(t) + y;
plot(x1,y1,c);
text(x,y,num2str(i),'HorizontalAlignment', 'center','VerticalAlignment', 'middle');
grid on;
axis equal;
hold on;