State_fidel = nan(size(Pumped_Indicator));
State_fidel(1,:) = [];

for h=2:size(Pumped_Indicator,1)
    State_fidel(h-1,1) = floor(mean(Pumped_Indicator(h,:) == [0 1 1]));
    State_fidel(h-1,2) = floor(mean(Pumped_Indicator(h,:) == [1 0 1]));
    State_fidel(h-1,3) = floor(mean(Pumped_Indicator(h,:) == [1 1 0]));
end