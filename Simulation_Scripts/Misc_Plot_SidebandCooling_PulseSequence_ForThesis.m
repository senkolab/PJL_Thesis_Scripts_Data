RepumpCool1StartTime = 10;
RepumpCool1EndTime = 110;
OpticalPumpCool1StartTime = RepumpCool1EndTime;
OpticalPumpCool1EndTime = OpticalPumpCool1StartTime + 100;
PulseCool1StartTime = OpticalPumpCool1EndTime;
PulseCool1EndTime = PulseCool1StartTime+100;
RepumpCool2StartTime = PulseCool1EndTime;
RepumpCool2EndTime = RepumpCool2StartTime + 100;
OpticalPumpCool2StartTime = RepumpCool2EndTime;
OpticalPumpCool2EndTime = OpticalPumpCool2StartTime + 100;
PulseCool2StartTime = OpticalPumpCool2EndTime;
PulseCool2EndTime = PulseCool2StartTime+100;
RepumpMeasureStartTime = PulseCool2EndTime;
RepumpMeasureEndTime = RepumpMeasureStartTime + 100;
OpticalPumpMeasureStartTime = RepumpMeasureEndTime;
OpticalPumpMeasureEndTime = OpticalPumpMeasureStartTime + 100;
PulseMeasureStartTime = OpticalPumpMeasureEndTime;
PulseMeasureEndTime = PulseMeasureStartTime+100;
FluorescenceStartTime = PulseMeasureEndTime;
FluorescenceEndTime = FluorescenceStartTime + 100;

time = 0:0.1:FluorescenceEndTime;

Cool_493 = zeros(1,numel(time));
OpticalPump_493 = zeros(1,numel(time));
Repump_614 = zeros(1,numel(time));
Cool_650 = zeros(1,numel(time));
Pulse_1762 = zeros(1,numel(time));
RF_Source = zeros(1,numel(time));

Cool_493(time>=FluorescenceStartTime & time<FluorescenceEndTime)=1;

OpticalPump_493(time>=OpticalPumpCool1StartTime & time<OpticalPumpCool1EndTime)=1;
OpticalPump_493(time>=OpticalPumpCool2StartTime & time<OpticalPumpCool2EndTime)=1;
OpticalPump_493(time>=OpticalPumpMeasureStartTime & time<OpticalPumpMeasureEndTime)=1;

Repump_614(time>=RepumpCool1StartTime & time<RepumpCool1EndTime) = 1;
Repump_614(time>=RepumpCool2StartTime & time<RepumpCool2EndTime) = 1;
Repump_614(time>=RepumpMeasureStartTime & time<RepumpMeasureEndTime) = 1;

Cool_650(time>=RepumpCool1StartTime & time<RepumpCool1EndTime) = 1;
Cool_650(time>=RepumpCool2StartTime & time<RepumpCool2EndTime) = 1;
Cool_650(time>=RepumpMeasureStartTime & time<RepumpMeasureEndTime) = 1;
Cool_650(time>=OpticalPumpCool1StartTime & time<OpticalPumpCool1EndTime) = 1;
Cool_650(time>=OpticalPumpCool2StartTime & time<OpticalPumpCool2EndTime) = 1;
Cool_650(time>=OpticalPumpMeasureStartTime & time<OpticalPumpMeasureEndTime) = 1;
Cool_650(time>=FluorescenceStartTime & time<FluorescenceEndTime) = 1;

Pulse_1762(time>=PulseCool1StartTime & time<PulseCool1EndTime) = 1;
Pulse_1762(time>=PulseCool2StartTime & time<PulseCool2EndTime) = 1;
Pulse_1762(time>=PulseMeasureStartTime & time<PulseMeasureEndTime) = 1;

RF_Source(time>=RepumpCool1StartTime & time<PulseCool1EndTime) = 0;
RF_Source(time>=RepumpCool2StartTime & time<PulseCool2EndTime) = 1;
RF_Source(time>=RepumpMeasureStartTime & time<=FluorescenceEndTime) = 2;

subplot(6,1,1);
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
subplot(6,1,2);
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
subplot(6,1,3);
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
subplot(6,1,4);
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
subplot(6,1,5);
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
subplot(6,1,6);
hold off
plot(time,RF_Source,'k','linewidth',4);
set(gca,'XTick',[0 time(end)]);
set(gca,'XTickLabel',{''; ''});
set(gca,'YTick',[0 1 2]);
set(gca,'YTickLabel',{'RF1'; 'RF2'; 'AWG'});
set(gca,'fontsize',24);
axis([0 time(end) 0 2]);
%ylabel('1762 nm');

set(gcf,'Position',[0 0 1917 420]);
pdfFilepath = 'C:\Users\pj3low\Documents\PhD_Thesis\';
pdffilename = 'SidebandCoolingPulseSequence.pdf';