files = dir([Filepath 'Ion-Image_*']);

Repump_num = 100;
Set_num = numel(files)/Repump_num;

locx_cell = cell(Set_num,Repump_num);
locy_cell = cell(Set_num,Repump_num);

files_underscore_ind = find(files(1).name == '_');

for h = 1:numel(files)
    A = double(imread([Filepath files(h).name]));
    [peaks,locx,locy,C] = findpeaks2D(A);
    threshold = OutlierUpper(A,90,5);
    exp_ind = str2num(files(h).name(files_underscore_ind(1)+1:files_underscore_ind(1)+2))+1;
    repump_ind = str2num(files(h).name(files_underscore_ind(2)+1:files_underscore_ind(2)+2))+1;
    locx_cell{exp_ind,repump_ind} = locx(peaks > threshold);
    locy_cell{exp_ind,repump_ind} = locy(peaks > threshold);
end

unique_positions = nan(1,Set_num);

for exp_num = 1:Set_num
    locx_array = [];
    locy_array = [];
    for h = 1:Repump_num
        locx_array = [locx_array; locx_cell{exp_num,h}];
        locy_array = [locy_array; locy_cell{exp_num,h}];
    end
    
    keep_ind = ones(size(locx_array));
    for h = 1:numel(keep_ind)
        for hh = h:numel(keep_ind)
            dist = (locx_array(h) - locx_array(hh))^2 + (locy_array(h) - locy_array(hh))^2;
            if dist <= 3^2 && h ~= hh
                keep_ind(hh) = 0;
            end
        end
    end
    unique_positions(exp_num) = sum(keep_ind);
end