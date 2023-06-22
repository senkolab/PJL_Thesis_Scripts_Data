files = dir([Filepath 'freqmeas_f2m2*.txt']);

Transition_Levels = nan(13,numel(files));
for h=1:numel(files)
    Transition_Levels(:,h) = importdata([Filepath files(h).name]);
end

x_data = Transition_Levels(5,:)-Transition_Levels(1,:);

y_dataF4m3 = Transition_Levels(2,:)-Transition_Levels(10,:);
y_dataF4m2 = Transition_Levels(3,:)-Transition_Levels(10,:);
y_dataF4m1 = Transition_Levels(4,:)-Transition_Levels(10,:);
y_dataF4m0 = Transition_Levels(5,:)-Transition_Levels(10,:);
y_dataF3m2 = Transition_Levels(6,:)-Transition_Levels(10,:);
y_dataF3m1 = Transition_Levels(7,:)-Transition_Levels(10,:);
y_dataF3m0 = Transition_Levels(8,:)-Transition_Levels(10,:);
y_dataF2m2 = Transition_Levels(9,:)-Transition_Levels(10,:);
y_dataF2m1 = Transition_Levels(10,:)-Transition_Levels(10,:);
y_dataF2m0 = Transition_Levels(11,:)-Transition_Levels(10,:);
y_dataF1m1 = Transition_Levels(12,:)-Transition_Levels(10,:);
y_dataF1m0 = Transition_Levels(13,:)-Transition_Levels(10,:);

P_array = nan(10,2);
P_array(1,:) = polyfit(x_data,y_dataF4m3,1);
P_array(2,:) = polyfit(x_data,y_dataF4m2,1);
P_array(3,:) = polyfit(x_data,y_dataF4m1,1);
P_array(4,:) = polyfit(x_data,y_dataF3m2,1);
P_array(5,:) = polyfit(x_data,y_dataF3m1,1);
P_array(6,:) = polyfit(x_data,y_dataF3m0,1);
P_array(7,:) = polyfit(x_data,y_dataF2m2,1);
P_array(8,:) = polyfit(x_data,y_dataF2m0,1);
P_array(9,:) = polyfit(x_data,y_dataF1m1,1);
P_array(10,:) = polyfit(x_data,y_dataF1m0,1);

dlmwrite([Filepath '1762_Transition-Freq_Parameters.txt'],P_array,'delimiter','\t','precision',10);