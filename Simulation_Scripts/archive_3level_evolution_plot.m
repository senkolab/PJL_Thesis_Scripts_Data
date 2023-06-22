options=odeset('RelTol',1e-5);

%Repeat for 5-level qudit
mass=0.137./(6.022140857*(10^23)); %Mass for Ba-137
lambda_Raman=532; %Raman laser wavelength
hbar=1.0545718*10^(-34); %Plank's constant

qudit_level=3; %qudit level
gate_time=100; %Gate time in micro-seconds
fq_COM=2; %COM motional frequency in MHz
fq_Tilt=fq_COM-0.2; %Tilt mode motional frequency in MHz
eta_COM=sqrt(2)*(2*pi/(lambda_Raman*(10^(-9))))*sqrt(hbar/(2*2*pi*fq_COM*(10^6)*2*mass)); %COM Lamb-Dicke parameter
n_average_COM=0; %Average COM phonon number
n_cycle=1; %Number of cycles in phase space, typically denoted K in literatures
heattime=0; %The fraction of gate time when a phonon jump due to motional heating occurs
mag_shift_on=1; 

%Fidelity with all error sources except phonon heating
MS_gate_qudit_2modes_ode113_mag_shift_lowmem_forevolfig;

GetPops;

figure

hold off
%plot(tm(1:10:end),Pops(1:10:end,1),'color',[240 71 74]/255,'linewidth',2);

%plot(tm(1:10:end),Pops(1:10:end,1),'color',[0 0 0]/255,'linewidth',2);

plot(tm(1:10:end),Pops(1:10:end,1),'color',[94 129 181]/255,'linewidth',2);
hold on
%plot(tm(1:10:end),Pops(1:10:end,2),'color',[178 174 127]/255,'linewidth',2);

%plot(tm(1:10:end),Pops(1:10:end,2),'-.','color',[0 0 0]/255,'linewidth',2);

plot(tm(1:10:end),Pops(1:10:end,2),'color',[225 156 36]/255,'linewidth',2);

axis([0 200 0 1])

%plot(tm(1:10:end),Pops(1:10:end,3),'color',[248 176 136]/255,'linewidth',2);
%plot(tm(1:10:end),Pops(1:10:end,5),'color',[103 68 64]/255,'linewidth',2);
%plot(tm(1:10:end),Pops(1:10:end,6),'color',[231 120 101]/255,'linewidth',2);
%plot(tm(1:10:end),Pops(1:10:end,end),'color',[177 124 93]/255,'linewidth',2);

%plot(tm(1:10:end),Pops(1:10:end,3),':','color',[0 0 0]/255,'linewidth',2);
%plot(tm(1:10:end),Pops(1:10:end,5),'color',[128 128 128]/255,'linewidth',2);
%plot(tm(1:10:end),Pops(1:10:end,6),'-.','color',[128 128 128]/255,'linewidth',2);
%plot(tm(1:10:end),Pops(1:10:end,end),':','color',[128 128 128]/255,'linewidth',2);

plot(tm(1:10:end),Pops(1:10:end,3),'color',[143 176 50]/255,'linewidth',2);
plot(tm(1:10:end),Pops(1:10:end,5),'color',[235 98 53]/255,'linewidth',2);
plot(tm(1:10:end),Pops(1:10:end,6),'color',[135 120 179]/255,'linewidth',2);
plot(tm(1:10:end),Pops(1:10:end,end),'color',[197 110 26]/255,'linewidth',2);

xlabel('Time ($\mathrm{\mu s}$)','fontsize',14,'interpreter','latex');
set(gca,'fontsize',12);
set(gca,'fontsize',11);
set(gca,'fontsize',10);
ylabel('State probability','fontsize',14,'interpreter','latex');
%title({'Classical simulation of 3-level qudit'; 'time evolution entangling gate'},'fontsize',14);
plot([100 100],[0 1],'--k','linewidth',2);
l=legend('|0,0\rangle','|0,1\rangle, |1,0\rangle','|0,2\rangle, |2,0\rangle','|1,1\rangle','|1,2\rangle, |2,1\rangle','|2,2\rangle','location','northeast');