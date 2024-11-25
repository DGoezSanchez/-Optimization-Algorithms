clear all
clc
hold on
s1s5radio=6.84
ts1s5=linspace(0,pi*2,360);
Xs1s5=s1s5radio*cos(ts1s5);
Ys1s5=s1s5radio*sin(ts1s5);
plot (Xs1s5,Ys1s5)
axis([0, 10, 0, 10])
hold on

s2s5radio=7.14
ts2s5=linspace(0,pi*2,360);
Xs2s5=10+s2s5radio*cos(ts2s5);
Ys2s5=s2s5radio*sin(ts2s5);
plot (Xs2s5,Ys2s5,'r')

s3s5radio=8.84
ts3s5=linspace(0,pi*2,360);
Xs3s5=10+s3s5radio*cos(ts3s5);
Ys3s5=10+s3s5radio*sin(ts3s5);
plot (Xs3s5,Ys3s5,'r')

s4s5radio=8.84
ts4s5=linspace(0,pi*2,360);
Xs4s5=s4s5radio*cos(ts4s5);
Ys4s5=10+s4s5radio*sin(ts4s5);
plot (Xs4s5,Ys4s5,'g')

% a=Dis_dosPuntos(Xs1s5(1),Ys1s5(1),Xs4s5(1),Ys4s5(1))
% b=Dis_dosPuntos(Xs1s5(1),Ys1s5(1),Xs2s5(1),Ys2s5(1))
% c=Dis_dosPuntos(Xs2s5(1),Ys2s5(1),Xs4s5(1),Ys4s5(1))
% AreaTriangulo(a,b,c)

%AreaTriangulo(a,b,c)
% t=linspace(0,2*pi,300);
% x=cos(t);
% y=sin(t);
%C = horzcat(ts1s5,ts4s5,ts2s5)    %Concatena vectores