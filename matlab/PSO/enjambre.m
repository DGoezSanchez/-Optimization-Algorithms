x=-1:0.01:1;
y=-1:0.01:1;

S=[];
for(i=1:length(x))
    for(j=1:length(y))
        S(i,j)=fenjambre(x(i),y(j));
    end
end
meshc(x,y,S)
