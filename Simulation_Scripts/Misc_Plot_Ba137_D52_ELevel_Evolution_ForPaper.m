Misc_Plot_Ba137_D52_S12_Levels;
figure
offset = min(E_array_D52(:,1)-repmat(E_array_S12(end,1),[size(E_array_D52,1) 1]));
plot(B_e_array,E_array_D52-repmat(E_array_S12(end,:),[size(E_array_D52,1) 1]) - offset);
hold on
Ax = axis;
plot([8.35 8.35],[Ax(3) Ax(4)],'--k');
Measured_freqs = -[457.869 481.43 528.771 542.483 555.877 584.251 592.25 598.091 601.151 609.91 610.385 620.689 630.59];
Measured_freqs_shifted = Measured_freqs - max(Measured_freqs) + E_array_D52(end,8351) - E_array_S12(end,8351) - offset;
for h = 1:numel(Measured_freqs_shifted)
    plot([0 10],[Measured_freqs_shifted(h) Measured_freqs_shifted(h)],':k');
end

xlabel('Magnetic field strength / Gauss','fontsize',18);
ylabel('Transition frequency - f_0 / MHz','fontsize',18);
set(gca,'fontsize',16);

pdfFilepath = 'C:\Users\pj3low\Documents\Qudit-Measurement-Paper_2022\Figures\';
pdffilename = 'TransitionFreq_vs_B_Sim_Ba137.pdf';