clear
V = 0.1;
s = 0;

[X, Y] = meshgrid(s:0.1:(s+5));
Z = sin(X + Y);
p = surf(X, Y, Z);

axis([-inf inf -inf inf -5 5]);
while true
    [X, Y] = meshgrid(s:0.1:(s+5));
    Z = sin(X + Y);
    p.ZData = Z;
    drawnow;
    s = s+V;
    pause(.1);
end