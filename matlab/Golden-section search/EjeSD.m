clear all;
clc;
% x=0:0.01:2;
% for i=1:length(x)
% y(i)=pruebaopt(x(i));
% end
% plot(x,y);

tic
minimogolden=SD('FunPrueba',0,2,0.1,0.0618);
toc
%minimofibo=fibomin('pruebaopt',0,2,0.01);

