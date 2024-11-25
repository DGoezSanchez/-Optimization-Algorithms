function [z] = Pparcial(x,y)
z=-abs(sin(x)*cos(y)*exp(1-(sqrt(x^2+y^2)/(pi))));
end