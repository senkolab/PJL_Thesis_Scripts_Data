Filepath = 'Z:\Lab Data\Sessions\2022\2022_11\2022_11_29\Ba137_D52_SPAM_13Levels\';
filename = 'D52_13Level_Qudit_SPAM_Run01_20msRepump_StartState*_Raw_001';
Misc_Get_StateFidel;
fidel_sorted = sort(diag(Fidel_Seq_Normed));
fidel_sorted = flipud(fidel_sorted);
figure
hold on
for h=2:13
    plot(h,mean(fidel_sorted(1:h)),'ok');
    plot(h,mean([fidel_sorted(1) fidel_sorted(end-h+2:end)']),'diamondk');
end
axis([1 14 0.8 1])
xlabel('Qudit dimension');
ylabel('Average fidelity');
l = legend('Optimal choice','Poor choice','location','northeast');
pdffilename = 'QuditScaling.pdf';