RepumpStartTime = 10;
RepumpEndTime = 110;
OpticalPumpSPStartTime = RepumpEndTime;
OpticalPumpSPEndTime = OpticalPumpSPStartTime + 100;
PulseSPStartTime = OpticalPumpSPEndTime;
PulseSPEndTime = PulseSPStartTime+100;
FluorescenceStartTime = PulseSPEndTime;
FluorescenceEndTime = FluorescenceStartTime + 100;
PulseMStartTime = FluorescenceEndTime;
PulseMEndTime = PulseMStartTime+100;
FluorescenceLastStartTime = PulseMEndTime;
FluorescenceLastEndTime = FluorescenceLastStartTime + 100;

time = 0:0.1:FluorescenceLastEndTime;

Cool_493 = zeros(1,numel(time));
OpticalPump_493 = zeros(1,numel(time));
Repump_614 = zeros(1,numel(time));
Cool_650 = zeros(1,numel(time));
Pulse_1762 = zeros(1,numel(time));

Cool_493(time>=FluorescenceStartTime & time<FluorescenceEndTime)=1;
Cool_493(time>=FluorescenceLastStartTime & time<FluorescenceLastEndTime)=1;
OpticalPump_493(time>=OpticalPumpSPStartTime & time<OpticalPumpSPEndTime)=1;
Repump_614(time>=RepumpStartTime & time<RepumpEndTime) = 1;
Cool_650(time>=RepumpStartTime & time<RepumpEndTime) = 1;
Cool_650(time>=OpticalPumpSPStartTime & time<OpticalPumpSPEndTime) = 1;
Cool_650(time>=FluorescenceStartTime & time<FluorescenceEndTime) = 1;
Cool_650(time>=FluorescenceLastStartTime & time<FluorescenceLastEndTime) = 1;
Pulse_1762(time>=PulseSPStartTime & time<PulseSPEndTime) = 1;
Pulse_1762(time>=PulseMStartTime & time<PulseMEndTime) = 1;

subplot(5,1,1);
hold off
area(time,Cool_493,'facecolor',[0/255 255/255 224/255],'linestyle','none');
hold on
plot(time,Cool_493,'k','linewidth',2);
set(gca,'XTick',[0 time(end)]);
set(gca,'XTickLabel',{''; ''});
set(gca,'YTick',[0 1]);
set(gca,'YTickLabel',{''; ''});
axis([0 time(end) 0 1]);
%ylabel('Cooling 493 nm');
subplot(5,1,2);
hold off
area(time,OpticalPump_493,'facecolor',[0/255 255/255 224/255],'linestyle','none');
hold on
plot(time,OpticalPump_493,'k','linewidth',2);
set(gca,'XTick',[0 time(end)]);
set(gca,'XTickLabel',{''; ''});
set(gca,'YTick',[0 1]);
set(gca,'YTickLabel',{''; ''});
axis([0 time(end) 0 1]);
%ylabel('Optical Pump 493 nm');
subplot(5,1,3);
hold off
area(time,Repump_614,'facecolor',[255/255 141/255 0],'linestyle','none');
hold on
plot(time,Repump_614,'k','linewidth',2);
set(gca,'XTick',[0 time(end)]);
set(gca,'XTickLabel',{''; ''});
set(gca,'YTick',[0 1]);
set(gca,'YTickLabel',{''; ''});
axis([0 time(end) 0 1]);
%ylabel('Repump 614 nm');
subplot(5,1,4);
hold off
area(time,Cool_650,'facecolor',[255/255 0 0],'linestyle','none');
hold on
plot(time,Cool_650,'k','linewidth',2);
set(gca,'XTick',[0 time(end)]);
set(gca,'XTickLabel',{''; ''});
set(gca,'YTick',[0 1]);
set(gca,'YTickLabel',{''; ''});
axis([0 time(end) 0 1]);
%ylabel('650 nm');
subplot(5,1,5);
hold off
area(time,Pulse_1762,'facecolor',[0.5 0.5 0.5],'linestyle','none');
hold on
plot(time,Pulse_1762,'k','linewidth',2);
set(gca,'XTick',[0 time(end)]);
set(gca,'XTickLabel',{''; ''});
set(gca,'YTick',[0 1]);
set(gca,'YTickLabel',{''; ''});
axis([0 time(end) 0 1]);
%ylabel('1762 nm');

set(gcf,'Position',[0 0 1917 420]);
pdfFilepath = 'C:\Users\pj3low\Documents\Qudit-Measurement-Paper_2022\Figures\';
pdffilename = 'SimplePulseSequence.pdf';