State_fidel = nan(size(Pumped_Indicator));
State_fidel(1,:,:) = [];

for hh = 1:size(Pumped_Indicator,3)
    for h=2:size(Pumped_Indicator,1)
        State_fidel(h-1,1,hh) = floor(mean(Pumped_Indicator(h,:,hh) == [0 1 1 1 1 1]));
        State_fidel(h-1,2,hh) = floor(mean(Pumped_Indicator(h,:,hh) == [1 0 1 1 1 1]));
        State_fidel(h-1,3,hh) = floor(mean(Pumped_Indicator(h,:,hh) == [1 1 0 1 1 1]));
        State_fidel(h-1,4,hh) = floor(mean(Pumped_Indicator(h,:,hh) == [1 1 1 0 1 1]));
        State_fidel(h-1,5,hh) = floor(mean(Pumped_Indicator(h,:,hh) == [1 1 1 1 0 1]));
        State_fidel(h-1,6,hh) = floor(mean(Pumped_Indicator(h,:,hh) == [1 1 1 1 1 0]));
    end
end