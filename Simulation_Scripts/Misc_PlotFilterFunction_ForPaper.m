Omega = 10*10^3;

x = 0:2:10^5;
S = (10^3)./x + 10;
S(1) = S(2);
S(x==60) = 10^4;
S = (4/(Omega^2)).*S./S(2);

F = 4.*(x.^2)/(Omega^2);
F(x>Omega) = 4;

figure
loglog(x,S,'k');
hold on
loglog(x,F./(x.^2),'--k');
xlabel('Frequency, \omega / 2\pi Hz');
ylabel('Noise intensity (arb. unit)');
l = legend('S(\omega)','F(\omega)/\omega^2','location','northeast');

Ax = axis;
axis([2 Ax(2) Ax(3) Ax(4)]);
pdffilename = 'FilterFunctionPlot.pdf';