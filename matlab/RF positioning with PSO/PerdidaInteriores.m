
function y=PerdidaInteriores(dBm,n)
LogD=-dBm+10*log10(0.010/0.001)+1.6+1.6-20*log10(2400)-(15+4*(n-1))+28;
y=10^(LogD/30);
%y=20*log10(2400)+30*log10(d)+(15+4*(n-1))-28