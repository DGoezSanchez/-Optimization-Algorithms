function PotenciaRX=Dis_fun_Potencia(ptx,gitx,girx,f_GHz,d_Km) 
%calculo de la potencia en función de la distancia
%El  resultado se da en dBm
PotenciaRX= 10*log10((ptx)/0.001)+10*log10(gitx)+10*log10(girx)-(92.44+20*log10(f_GHz)+20*log10(d_Km))

end