function z=Schwefel(x,y)
n =2;
V = 4189.829101;

%x = linspace(-500,100,500);

%y = linspace(-500,100,500);

%[x,y] = meshgrid(x,y);

z = n*V+(-x* sin(sqrt(abs(x)))) + (-y* sin(sqrt(abs(y))));
end
% mesh(x,y,z);