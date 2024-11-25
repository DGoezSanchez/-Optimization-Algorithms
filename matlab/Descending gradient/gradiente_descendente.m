clear all
clc
x1=-3:0.1:3;
y1=-3:0.1:3;
S=[];
for(i=1:length(x1))
    for(j=1:length(y1))
        S(i,j)=F_Parcial(x1(i),y1(j));
    end
end
iter=70;
h=0.001;
alfa=0.15;
% x=1.5;
% y=1.65;
x=-2;
y=-2;
i=0;
while(i<iter)
    gx=((F_Parcial((x+h),y))-F_Parcial(x,y))/h;
    gy=((F_Parcial(x,(y+h)))-F_Parcial(x,y))/h;  
    plot3(y,x,F_Parcial(x,y),'.','markersize',15,'markerfacecolor','g');
    axis([-3 3 -3 3 -25 -5])
    grid on
    drawnow;
    hold on
    meshc(y1,x1,S)
    x=x+alfa*gx;
    %x=roundn(x,-2); 
    y=y+alfa*gy;
    y=roundn(y,-2);
    i=i+1;
end
 hold off
 hold on
 plot3(y,x,F_Parcial(x,y),'r*','LineWidth',5);
 hold on
 meshc(y1,x1,S)
 