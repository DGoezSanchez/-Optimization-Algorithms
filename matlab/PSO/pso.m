clear all; close all
n=500; %Número de partículas para hacer la búsqueda
Xnuevo=rand(n,2)*2-1; %Posiciones iniciales
Vnuevo=0.1*rand(n,2)*2-1; %Velocidades iniciales
Xast=Xnuevo; %Mejor posición de cada partícula hasta el momento

for(i=1:n)
    Fnuevo(i)=fenjambre(Xnuevo(i,1),Xnuevo(i,2));
end
g=find(Fnuevo==min(Fnuevo));%Mínimo global hasta el momento
mejor=Xnuevo(g,:);
for(cont=1:300)

    X=Xnuevo;
    V=Vnuevo;
    F=Fnuevo;
    Xnuevo=X+V;
    
    Xnuevo(Xnuevo>1)=1; Xnuevo(Xnuevo<-1)=-1;
    
    plot(Xnuevo(:,1),Xnuevo(:,2),'o');%hold on;
    axis([-1 1 -1 1])
    pause(0.01)
    for(i=1:n)
        Fnuevo(i)=fenjambre(Xnuevo(i,1),Xnuevo(i,2));
        if(Fnuevo(i)<F(i))
            Xast(i,:)=Xnuevo(i,:); %Mejor posición de la partícula i
        end
    end
    gnuevo=find(Fnuevo==min(Fnuevo));%Mínimo global hasta el momento
    mejornuevo=Xnuevo(gnuevo,:);
    if(fenjambre(mejornuevo(1),mejornuevo(2))<fenjambre(mejor(1),mejor(2)))
        mejor=mejornuevo;
    end
    Vnuevo=V+rand*0.1*(ones(n,1)*mejor-Xnuevo)+rand*0.1*(Xast-Xnuevo);
end


