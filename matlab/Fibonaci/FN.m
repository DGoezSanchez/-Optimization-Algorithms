function y=FN(N)
x=[2:0.001:3];
for i=1:length(x)
fx(i)=fpb1(x(i));
end
plot(x,fx);
grid on
hold on
y=0;
liminf=2;
limsup=3;
tol=0.1;
N=N;
n=[];
n(1)=1-(N/(N+1));
n(2)=1-((N-1)/N);
for i=3:N
    n(i)= 1-((N-(i-1))/(N-(i-2)));
end
disp(n)
pasos=0;
cond1=2;
while cond1<N+1
    pasoa=liminf+n(cond1)*(limsup-liminf);
    pasob=limsup-n(cond1)*(limsup-liminf);
    evala=eval(strcat('fpb1','(pasoa)'));
    evalb=eval(strcat('fpb1','(pasob)'));
    plot(liminf,eval(strcat('fpb1','(liminf)')),'r*')
    plot(limsup,eval(strcat('fpb1','(limsup)')),'r*')
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
    cond1=cond1+1;
end

end
 