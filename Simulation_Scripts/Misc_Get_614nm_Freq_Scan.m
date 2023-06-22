A = importdata([Filepath files(1).name]);
startind = find(A{1} == '[');
startind = startind(2);
endind = find(A{1} == ']');
endind = endind(1);
B = str2num(A{1}(startind:endind));
LegitCount_array = nan(1,numel(files));
RepumpedCount_array = nan(1,numel(files));

for fileind = 1:numel(files)
    A = importdata([Filepath files(fileind).name]);
    LegitCount = 0;
    RepumpedCount = 0;
    for h = 1:numel(A)
        startind = find(A{h} == '[');
        startind = startind(2);
        endind = find(A{h} == ']');
        endind = endind(1);
        B = str2num(A{h}(startind:endind));
        if B(1)<200
            LegitCount = LegitCount + 1;
        end
        if B(2)>200 && B(1)<200
            RepumpedCount = RepumpedCount + 1;
        end
    end
    LegitCount_array(fileind) = LegitCount;
    RepumpedCount_array(fileind) = RepumpedCount;
end