files_freq_list = dir([Filepath filename]);
Freq_Cal = nan(numel(files_freq_list),1);
sort_index = [12 13 9 10 11 1 6 2 7 3 8 4 5];
for kk = 1:numel(files_freq_list)
    filename = files_freq_list(kk).name(1:end-4);
    Centre_Freq = str2num(filename(29:34))/1000;
    Misc_Get_Shelved_Population;
    Freqs = Centre_Freq-0.01:0.001:Centre_Freq-0.01 + 0.001*(numel(files)-1);
    BETA = Getfunpara(@(PP,xx) Lorentzian_1D(PP,xx),[Centre_Freq 0.5 0.001 0],Freqs,Pumped_population);
    Freq_Cal(sort_index(kk)) = BETA(1);
end