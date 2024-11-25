function CalculoPosicion (Ptx1,Ptx2,S3,s2s3,s1s3) %
% s2s3 es la potencia en W desde S2 a S3
% s1s3 es la potencia en W desde S1 a S3
a=Distancia_F_potencia(Ptx1,1.6,1.6,s2s3) %potencia desde S2 a S3
c=S3
b=Distancia_F_potencia(Ptx2,1.6,1.6,s1s3) %potencia desde S1 a S3
if (a+b)>c
    Ang=acosd((b^2+c^2-a^2)/(2*b*c));
    Bng=asind((a^2+c^2-b^2)/(2*a*c));
    Cng=180-Ang-Bng;
    x=b*cosd(Ang)
    y=b*sind(Ang)
    S1S2=[0:1:S3];
    z=zeros(1,S3+1) 
    hold on;
    plot(x,y,'rx');
    title('Area de Trabajo en Metros');
    axis([0 50 0 50]);
    grid on
    plot(S1S2,z,'r','linewidth',2); % Dibuja la línea de longitud entre S1 y S2
    disp(a);
    disp(b);
    disp(S3);
else 
    disp('No se puede calcular')
end