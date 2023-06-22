Filepath = 'Z:\Lab Data\Sessions\2022\2022_11\2022_11_29\Ba137_D52_SPAM_13Levels\';
filename = 'D52_13Level_Qudit_SPAM_Run01_20msRepump_StartState*_Raw_001';
Misc_Get_StateFidel;
fidel_sorted = sort(diag(Fidel_Seq_Normed));
fidel_sorted = flipud(fidel_sorted);
fidel_errorbar = sqrt(fidel_sorted.*(1-fidel_sorted)./1000);
figure
hold on
plot([2-0.5 13.5],[fidel_sorted(1) fidel_sorted(1)],'color',[0.5 0.5 0.5]);
for h=2:13
    plot([h-0.5 13.5],[fidel_sorted(end-h+2) fidel_sorted(end-h+2)],'color',[0.5 0.5 0.5]);
end
for h=2:13
    errorbar(h,mean([fidel_sorted(1) fidel_sorted(end-h+2:end)']),mean([fidel_errorbar(1) fidel_errorbar(end-h+2:end)']),'ok');
end
axis([1 14 0.65 1])
xlabel('Qudit dimension');
ylabel('Average fidelity');
pdffilename = 'QuditScalingPoorChoice.pdf';