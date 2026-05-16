%绘制分段函数的曲线
x1 = -3:0.01:-1;
x2 = -1:0.01:1;
x3 = 1:0.01:3;
y1 = (-x1.^2-4*x1-3)/2;
y2 = -x2.^2+1;
y3 = (-x3.^2+4*x3-3)/2;
plot(x1,y1);
hold on;
plot(x2,y2);
hold on;
plot(x3,y3);
xlabel('x');
ylabel('y');

