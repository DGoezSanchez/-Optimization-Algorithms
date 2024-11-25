clear all
clc
d_metros=[0.5:0.1:10];

for n=1:length(d_metros)
P1(n)=RFposicionamiento(0.100,2.1,d_metros(n));

end
plot (d_metros,y)