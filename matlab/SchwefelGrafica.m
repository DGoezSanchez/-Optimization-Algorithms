n = 2 
V = 4189.829101 
 
x = linspace(-500,500,500); 
 
y = linspace(-500,500,500); 
 
[x,y] = meshgrid(x,y); 
 
Z = n*V+(- x.* sin(sqrt(abs(x)))) + (- y.* sin(sqrt(abs(y)))); 
 
mesh(x,y,Z); 