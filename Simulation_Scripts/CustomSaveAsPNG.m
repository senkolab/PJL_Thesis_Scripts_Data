h=gcf;
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);
set(h,'Color','none');
set(h, 'InvertHardCopy', 'off')
if exist(pngFilepath) == 0
    mkdir(pngFilepath)
end
F = getframe(h);
F = F.cdata;
imwrite(F,[pngFilepath pngfilename],'png','Transparency',[0 0 0]);