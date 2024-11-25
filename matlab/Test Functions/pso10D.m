clear all; close all
tic
clk=0;
Inter=1000;
EP=512;  %Espacio de busqueda
n=80; %Número de partículas para hacer la búsqueda
Xnuevo=rand(n,2)*EP*2-EP; %Posiciones iniciales
Vnuevo=0.01*(rand(n,2)*1-0.5); %Velocidades iniciales
Xast=Xnuevo; %Mejor posición de cada partícula hasta el momento

for(i=1:n)
   %Fnuevo(i)=Rastrigin(Xnuevo(i,1),Xnuevo(i,2));
   Fnuevo(i)=Eggholder(Xnuevo(i,1),Xnuevo(i,2));
end
g=find(Fnuevo==min(Fnuevo));%Mínimo global hasta el momento
mejor=Xnuevo(g,:);
for(cont=1:Inter)
    X=Xnuevo;
    V=Vnuevo;
    F=Fnuevo;
    Xnuevo=X+V;
    Xnuevo(Xnuevo>EP)=EP; Xnuevo(Xnuevo<-EP)=-EP;
    plot(Xnuevo(:,1),Xnuevo(:,2),'o');hold on;
    plot(mejor(:,1),mejor(:,2),'r*');%hold on;
    axis([-EP-1/6*EP EP+1/6*EP -EP-1/6*EP EP+1/6*EP])
    pause(0.001)
    hold off;
    for(i=1:n)
        Fnuevo(i)=Eggholder(Xnuevo(i,1),Xnuevo(i,2));
%         Fnuevo(i)=Rastrigin(Xnuevo(i,1),Xnuevo(i,2));
        if(Fnuevo(i)<F(i))
            Xast(i,:)=Xnuevo(i,:); %Mejor posición de la partícula i
        end
    end
    gnuevo=find(Fnuevo==min(Fnuevo),1);%Mínimo global hasta el momento
    mejornuevo=Xnuevo(gnuevo,:);
    if(Eggholder(mejornuevo(1),mejornuevo(2))<Eggholder(mejor(1),mejor(2)))
%     if(Rastrigin(mejornuevo(1),mejornuevo(2))<Rastrigin(mejor(1),mejor(2)))
        mejor=mejornuevo;
        j=0;
    end
    Vnuevo=(V+rand*0.01*((ones(n,1)*mejor)-Xnuevo)+rand*0.01*(Xast-Xnuevo));
   
%     if(((clk/Inter)*100)<20)
%         Vnuevo=V+0.1*rand*(Vnuevo);
%     else
%         Vnuevo=(V+rand*0.01*((ones(n,1)*mejor)-Xnuevo)+rand*0.009*(Xast-Xnuevo));
%     end
    j=j+1;
    clk=clk+1;
    CP=(j/Inter)*100;
    if(CP>35)
       break; 
    end
end
disp(mejor)
disp(j)

disp(cont)
tiempo=toc
% hold on
% x = linspace(-900,900,800);
% 
% y = linspace(-900,900,800);
% % x=512;
% % y=404.2319;
% [x,y] = meshgrid(x,y);
% 
% z = -(y+47).*sin(sqrt(abs((x./2)+(y+47))))-x.*sin(sqrt(abs(x-(y+47))));
% z1 = -(mejor(:,2)+47).*sin(sqrt(abs((mejor(:,1)/2)+(mejor(:,2)+47))))-mejor(:,1)*sin(sqrt(abs(mejor(:,1)-(mejor(:,2)+47))))
%  
% mesh(x,y,z); %AQUÍ SE LE RESTA LA ALTURA!!!
% plot3(mejor(:,1),mejor(:,2),z1,'r*')