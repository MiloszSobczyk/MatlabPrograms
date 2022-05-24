clear;

limit = 10; %limit osi X i osi Y
modifier = .4; %skalowanie kuli
radius = 3; %promien ruchu
radiusBig = 10;

[X, Y, Z] = sphere(20);

X = X * modifier;
Y = Y * modifier;
Z = Z * modifier;

hold on;
axis equal;
grid on;
xlabel("OX");
ylabel("OY");
zlabel("OZ");
axis([-2*limit 2*limit -limit limit -1.5*limit 1.5*limit]);
campos([90 90 90]);

point1 = surf(X + radiusBig, Y - radius, Z, EdgeColor="none", FaceColor="b");
point2 = surf(X + radiusBig, Y + radius, Z, EdgeColor = "none", FaceColor="r");

for i = 1:100000
    point1.XData = ((X + radiusBig + radius * cos(.1 * i)) * cos(.01 * i) + Z * sin(.01 * i));
    point1.YData = (Y + radius * sin(.1 * i));
    point1.ZData = (-(X + radiusBig + radius * cos(.1 * i)) * sin(.01 * i) + Z * cos(.01 * i));
    point2.XData = ((X + radiusBig + radius * cos(pi + .1 * i)) * cos(.01 * i) + Z * sin(.01 * i));
    point2.YData = (Y + radius * sin(pi + .1 * i));
    point2.ZData = (-(X + radiusBig + radius * cos(pi + .1 * i)) * sin(.01 * i) + Z * cos(.01 * i));
    pause(.01);

end