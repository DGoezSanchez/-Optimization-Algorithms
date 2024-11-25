%Potencia radiada
%Se entrega la distancia en metros
function D=Distancia_F_potencia(Ptx,gitx,girx,Prx)
dB_dis=10*log10(Ptx)+10*log10(gitx)+10*log10(girx)-20*log10((4*pi)/(300000000))-20*log10(2400000000)-10*log10(Prx);
D=10^(dB_dis/20);
end