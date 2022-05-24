clear;
limit = 7; %limit of X- and Y-axes
shiftX = 0; %shift of orbit in X-axis
shiftY = 1; %shift of orbit in Y-axis
modifierM = .3; %modifier Moon
modifierE = 1; %modifier Earth
ellipseModifier = .6; %modifier to make circular movement look eliptical. 
%Apply to one set of coordinates
radius = 4;

[X, Y, Z] = sphere(40);
X = X * modifierE;
Y = Y * modifierE;
Z = Z * modifierE;

shading flat;
hold on;
grid on;
campos([90 0 2]);

earth = surf(X, Y, Z, FaceColor="[.13 .55 .13]");
axis([-limit limit -limit limit -limit limit]);

X = X * modifierM / modifierE;
Y = Y * modifierM / modifierE;
Z = Z * modifierM / modifierE;

moon = surf(X - shiftX, Y - shiftY + radius, Z, FaceColor="[.4 .4 .4]");
for i = 1:0.01:10
    moon.XData = ellipseModifier * (X - shiftX + radius * sin(i));
    moon.YData = (Y - shiftY + radius * cos(i));
    pause(.01);
end