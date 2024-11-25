% Condiciones y cordenadas iniciales para encontrar el minimo de esta
% función
% x1=-1:0.01:1;
% y1=-1:0.01:1;
% axis([-1 1 -1 1 9 10])
% x=0.89;
% y=0.77;
function z=F_eval(x,y)
z = 10-(exp(-1*((x)^2+3*(y)^2)));
end