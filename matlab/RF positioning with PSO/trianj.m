clear all
clc


c1=[0 0];

c2=[10 0];

c3=[10 10];

c4=[0 10];

c5=[0 0];

c6=[10 0];

c7=[10 10];

c8=[0 10];
% c1=rand(1,2)*1;
% 
% c2=rand(1,2)*1;
% 
% c3=rand(1,2)*1;
% 
% c4=rand(1,2)*1;
r1=9;
r2=7.14;
r3=5.84;
r4=8.84;
r5=9;
r6=7.14;
r7=5.84;
r8=8.84;
n=50; %Numero de partïculas para hacer la busqueda
Xnuevo=rand(n,2)*10; %Posiciones iniciales
Vnuevo=0.01*(rand(n,2)*10); %Velocidades iniciales
Xast=Xnuevo; %Mejor posiciï¿½n de cada partï¿½cula hasta el momento

for(i=1:n)
    Fnuevo(i)=triangoez([Xnuevo(i,1),Xnuevo(i,2)],c1,c2,c3,c4,r1,r2,r3,r4);
end
g=find(Fnuevo==min(Fnuevo));%Mï¿½nimo global hasta el momento
mejor=Xnuevo(g,:);
for(cont=1:200)

    X=Xnuevo;
    V=Vnuevo;
    F=Fnuevo;
    Xnuevo=X+V;
    
    Xnuevo(Xnuevo>10)=10; Xnuevo(Xnuevo<0)=0;
    
    plot(Xnuevo(:,1),Xnuevo(:,2),'o');%hold on;
    axis([0 10 0 10])
    pause(0.1)
    for(i=1:n)
        Fnuevo(i)=triangoez([Xnuevo(i,1) Xnuevo(i,2)],c1,c2,c3,c4,r1,r2,r3,r4);
        if(Fnuevo(i)<F(i))
            Xast(i,:)=Xnuevo(i,:); %Mejor posiciï¿½n de la partï¿½cula i
        end
    end
    
    gnuevo=find(Fnuevo==min(Fnuevo));%Mï¿½nimo global hasta el momento
    mejornuevo=Xnuevo(gnuevo,:);
    if(triangoez([mejornuevo(1),mejornuevo(2)],c1,c2,c3,c4,r1,r2,r3,r4)<triangoez([mejor(1),mejor(2)],c1,c2,c3,c4,r1,r2,r3,r4))
        mejor=mejornuevo;
    end
    Vnuevo=V+rand*0.05*(ones(n,1)*mejor-Xnuevo)+rand*0.1*(Xast-Xnuevo);
end

hold on
s1s5radio=r1;
ts1s5=linspace(0,pi*2,360);
Xs1s5=s1s5radio*cos(ts1s5);
Ys1s5=s1s5radio*sin(ts1s5);
plot (Xs1s5,Ys1s5)
axis([0, 10, 0, 10])
hold on

s2s5radio=r2;
ts2s5=linspace(0,pi*2,360);
Xs2s5=10+s2s5radio*cos(ts2s5);
Ys2s5=s2s5radio*sin(ts2s5);
plot (Xs2s5,Ys2s5,'r')

s3s5radio=r3;
ts3s5=linspace(0,pi*2,360);
Xs3s5=10+s3s5radio*cos(ts3s5);
Ys3s5=10+s3s5radio*sin(ts3s5);
plot (Xs3s5,Ys3s5,'r')

s4s5radio=r4;
ts4s5=linspace(0,pi*2,360);
Xs4s5=s4s5radio*cos(ts4s5);
Ys4s5=10+s4s5radio*sin(ts4s5);
plot (Xs4s5,Ys4s5,'g')
hold off
