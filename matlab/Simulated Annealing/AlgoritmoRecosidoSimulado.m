clear all
clc
% x=-3:0.1:3;
% y=-3:0.1:3;
% z=FuncBimodal(x,y);
x=-3:0.1:3;
y=-3:0.1:3;
z=[];
for(i=1:length(x))
    for(j=1:length(y))
        z(i,j)=FuncBimodal([x(i),y(j)]);
    end
end
meshc(x,y,z);hold on;
tic
k=1;
Niter=150;
T_ini=5.0;
T_fin=1e-20;
beta=0.98;
xr=max(x)-min(x);
yr=max(y)-min(y);
xn=rand*xr+min(x);
yn=rand*yr+min(y);
T=T_ini;
EspacioVal=0;
data=[];
while k<Niter && T>T_fin
    
%     pause(0.0001);
    Eold=FuncBimodal([xn,yn]);
%     meshc(x,y,z);
%     plot3(yn,xn,Eold,'rx');
%     drawnow;
%     hold on
    while EspacioVal==0
        xnc=xn+(rand*2-1)*T;
        ync=yn+(rand*2-1)*T;
%         xnc=xn+randn*T;
%         ync=yn+randn*T;
        if (xnc>=min(x)&& xnc<=max(x)&& ync>=min(y)&& ync<=max(y))
            EspacioVal=1;
        end
    end
    EspacioVal=0;
    data(k)=T;
    E_new=FuncBimodal([xnc,ync]);
    DtE=E_new-Eold;
    if E_new<Eold || exp(DtE/T)<rand
        xn=xnc;
        yn=ync;
    end
    T=beta*T;
    if (T<T_fin)
        T=T_fin;
    end
    k=k+1;
end 
disp([xnc,ync])
disp(Eold)
toc