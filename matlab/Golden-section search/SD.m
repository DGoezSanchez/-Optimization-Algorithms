function [y]=SD(fun,a0,b0,tol,eta)

liminf=a0;
limsup=b0;
x=0:0.01:2;
for i=1:length(x)
    fx(i)=FunPrueba(x(i));
end
plot(x,fx)
hold on
pause(1)
cond=0;pasos=0;
while cond==0
    pasoa=liminf+eta*(limsup-liminf);
    pasob=limsup-eta*(limsup-liminf);
    evala=eval(strcat(fun,'(pasoa)'));
    evalb=eval(strcat(fun,'(pasob)'));
    plot(liminf,eval(strcat(fun,'(liminf)')),'r*')
    plot(limsup,eval(strcat(fun,'(limsup)')),'r*')
    pause(1)
    if(evala < evalb)
        if (abs(liminf-limsup)<tol)
            y=pasoa;
            display(pasos)
            return;
        end
        limsup=pasob;
    else
        if (abs(liminf-limsup)<tol)
            y=pasob;
            display(pasos)
            return;
        end
        liminf=pasoa;
    end    
    pasos=pasos+1;
end
disp(liminf)
disp(limsup)