Misc_Plot_Ba137_D52_S12_Levels;

eigvectors_array = eigvectors_array_D52;

Misc_Get_FmF_CB_Coeffs;

for h = 2:size(eigvectors_array,3)
    for hh = 1:size(eigvectors_array,2)
        if h==2
            eigvector_sign_flip = FStates(:,hh)'*eigvectors_array(:,hh,h);
        else
            eigvector_sign_flip = eigvectors_array(:,hh,h-1)'*eigvectors_array(:,hh,h);
        end
        eigvectors_array(:,hh,h) = sign(eigvector_sign_flip).*eigvectors_array(:,hh,h);
    end
end

F4mn4_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mn4_array(1:24,h)=FStates'*eigvectors_array(:,1,h);
end

F4mn3_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mn3_array(1:24,h)=FStates'*eigvectors_array(:,2,h);
end

F4mn2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mn2_array(1:24,h)=FStates'*eigvectors_array(:,3,h);
end

F4mn1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mn1_array(1:24,h)=FStates'*eigvectors_array(:,4,h);
end

F4m0_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4m0_array(1:24,h)=FStates'*eigvectors_array(:,5,h);
end

F4mp1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mp1_array(1:24,h)=FStates'*eigvectors_array(:,6,h);
end

F4mp2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mp2_array(1:24,h)=FStates'*eigvectors_array(:,7,h);
end

F4mp3_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mp3_array(1:24,h)=FStates'*eigvectors_array(:,8,h);
end

F4mp4_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mp4_array(1:24,h)=FStates'*eigvectors_array(:,9,h);
end

F3mn3_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mn3_array(1:24,h)=FStates'*eigvectors_array(:,10,h);
end

F3mn2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mn2_array(1:24,h)=FStates'*eigvectors_array(:,11,h);
end

F3mn1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mn1_array(1:24,h)=FStates'*eigvectors_array(:,12,h);
end

F3m0_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3m0_array(1:24,h)=FStates'*eigvectors_array(:,13,h);
end

F3mp1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mp1_array(1:24,h)=FStates'*eigvectors_array(:,14,h);
end

F3mp2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mp2_array(1:24,h)=FStates'*eigvectors_array(:,15,h);
end

F3mp3_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mp3_array(1:24,h)=FStates'*eigvectors_array(:,16,h);
end

F2mn2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2mn2_array(1:24,h)=FStates'*eigvectors_array(:,17,h);
end

F2mn1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2mn1_array(1:24,h)=FStates'*eigvectors_array(:,18,h);
end

F2m0_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2m0_array(1:24,h)=FStates'*eigvectors_array(:,19,h);
end

F2mp1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2mp1_array(1:24,h)=FStates'*eigvectors_array(:,20,h);
end

F2mp2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2mp2_array(1:24,h)=FStates'*eigvectors_array(:,21,h);
end

F1mn1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F1mn1_array(1:24,h)=FStates'*eigvectors_array(:,22,h);
end

F1m0_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F1m0_array(1:24,h)=FStates'*eigvectors_array(:,23,h);
end

F1mp1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F1mp1_array(1:24,h)=FStates'*eigvectors_array(:,24,h);
end

ytlabel = {'F = 4, m_F = -4';'F = 4, m_F = -3';...
    'F = 4, m_F = -2';'F = 4, m_F = -1';'F = 4, m_F = 0';...
    'F = 4, m_F = 1';'F = 4, m_F = 2';'F = 4, m_F = 3';...
    'F = 4, m_F = 4';'F = 3, m_F = -3';'F = 3, m_F = -2';...
    'F = 3, m_F = -1';'F = 3, m_F = 0';'F = 3, m_F = 1';...
    'F = 3, m_F = 2';'F = 3, m_F = 3';'F = 2, m_F = -2';...
    'F = 2, m_F = -1';'F = 2, m_F = 0';'F = 2, m_F = 1';...
    'F = 2, m_F = 2';'F = 1, m_F = -1';'F = 1, m_F = 0';...
    'F = 1, m_F = 1';};

p = pcolor(B_e_array(2:end),1:size(F4mn4_array(:,2:end),1),F4mn4_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 4, m_{F''} = -4','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F4mn4StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F4mn3_array(:,2:end),1),F4mn3_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 4, m_{F''} = -3','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F4mn3StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F4mn2_array(:,2:end),1),F4mn2_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 4, m_{F''} = -2','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F4mn2StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F4mn1_array(:,2:end),1),F4mn1_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 4, m_{F''} = -1','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F4mn1StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F4m0_array(:,2:end),1),F4m0_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 4, m_{F''} = 0','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F4m0StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F4mp1_array(:,2:end),1),F4mp1_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 4, m_{F''} = 1','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F4mp1StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F4mp2_array(:,2:end),1),F4mp2_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 4, m_{F''} = 2','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F4mp2StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F4mp3_array(:,2:end),1),F4mp3_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 4, m_{F''} = 3','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F4mp3StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F4mp4_array(:,2:end),1),F4mp4_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 4, m_{F''} = 4','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F4mp4StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F3mn3_array(:,2:end),1),F3mn3_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 3, m_{F''} = -3','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F3mn3StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F3mn2_array(:,2:end),1),F3mn2_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 3, m_{F''} = -2','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F3mn2StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F3mn1_array(:,2:end),1),F3mn1_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 3, m_{F''} = -1','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F3mn1StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F3m0_array(:,2:end),1),F3m0_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 3, m_{F''} = 0','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F3m0StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F3mp1_array(:,2:end),1),F3mp1_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 3, m_{F''} = 1','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F3mp1StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F3mp2_array(:,2:end),1),F3mp2_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 3, m_{F''} = 2','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F3mp2StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F3mp3_array(:,2:end),1),F3mp3_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 3, m_{F''} = 3','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F3mp3StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F2mn2_array(:,2:end),1),F2mn2_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 2, m_{F''} = -2','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F2mn2StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F2mn1_array(:,2:end),1),F2mn1_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 2, m_{F''} = -1','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F2mn1StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F2m0_array(:,2:end),1),F2m0_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 2, m_{F''} = 0','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F2m0StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F2mp1_array(:,2:end),1),F2mp1_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 2, m_{F''} = 1','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F2mp1StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F2mp2_array(:,2:end),1),F2mp2_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 2, m_{F''} = 2','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F2mp2StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F1mn1_array(:,2:end),1),F1mn1_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 1, m_{F''} = -1','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F1mn1StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F1m0_array(:,2:end),1),F1m0_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 1, m_{F''} = 0','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F1m0StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;
close all

p = pcolor(B_e_array(2:end),1:size(F1mp1_array(:,2:end),1),F1mp1_array(:,2:end));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude','fontsize',14);
caxis([-1 1])
xlabel('Magnetic field strength / Gauss','fontsize',14);
%title('F'' = 1, m_{F''} = 1','color',[10/255 10/255 10/255]);
set(gcf,'Position',[0 0 560 650])
pngfilename = 'SuppMat_F1mp1StateEvolFmF.png';
colormap('jet');
CustomSaveAsPNG;