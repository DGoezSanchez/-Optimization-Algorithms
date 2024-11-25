clear all
clc
% x=-3:0.1:3;
% y=-3:0.1:3;
% z=FuncBimodal(x,y);
x1=-3:0.05:3;
y1=-3:0.05:3;
S=[];
for(i=1:length(x1))
    for(j=1:length(y1))
        S(i,j)=FuncBimodal(x1(i),y1(j));
    end
end
meshc(x1,y1,S);hold on;
