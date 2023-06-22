Filepath = 'Z:\Lab Data\Sessions\2022\2022_12\2022_12_05\Rabi_Flop_Scans_D52_Ba137\';

options=optimset('tolfun',1e-14,'tolx',1e-6,'MaxFunEvals',50000,'maxiter',10000);
peak_time = time(mean(Pumped_population(time<100),2) == max(mean(Pumped_population(time<100),2)));
peak_time = peak_time(1);
if peak_time>80
    peak_time = time(mean(Pumped_population,2) == max(mean(Pumped_population,2)));
    peak_time = peak_time(1);
end
x = time(time>0.5*peak_time & time<1.5*peak_time)';
y = Pumped_population(time>0.5*peak_time & time<1.5*peak_time);
[BETA,BETA_Err,Exitflag]=Getfunpara(@(P,x) Scaled_cos(P,x),[1 peak_time peak_time 0],x,y,[],[],options);

errorbar(time,mean(Pumped_population,2),sqrt((1-mean(Pumped_population,2)).*mean(Pumped_population,2)./(100*size(Pumped_population,2))),'o-')
xlabel('Time / $\mu s$','interpreter','latex');
ylabel('Transition probability','interpreter','latex');
title('$F''=1, m_{F''}=1$','interpreter','latex');
axis([0 500 0 1]);
pdffilename = 'Rabi_flop_F1m1_20221205.pdf';
CustomSaveAsPDF;

Fidels_Opt = [Fidel_Rabi_F4m4 Fidel_Rabi_F4m3 Fidel_Rabi_F4m2 Fidel_Rabi_F4m1 Fidel_Rabi_F4m0...
    Fidel_Rabi_F3m2 Fidel_Rabi_F3m1 Fidel_Rabi_F3m0...
    Fidel_Rabi_F2m2 Fidel_Rabi_F2m1 Fidel_Rabi_F2m0...
    Fidel_Rabi_F1m0];