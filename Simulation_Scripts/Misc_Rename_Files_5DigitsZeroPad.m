files = dir([Filepath filename '*']);

for h=1:numel(files)
    file_index = str2num(files(h).name(numel(filename)+1:end));
    if numel(files(h).name) ~= numel(filename)+5
        movefile([Filepath files(h).name], [Filepath filename num2str(file_index,'%05.f')]);
    end
end