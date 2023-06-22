Omega_S = 2*pi*10;
Omega_D = 2*pi*10;

Ba_SPD_Levels_OpticalBloch_Analytical_DeltaScan
figure
p = pcolor(Delta_D_array,Delta_S_array,sigma_PP_end);
set(p,'linestyle','none');
colormap('jet');
c = colorbar;
cc1 = caxis;
xlabel('\Delta_D / 2\pi MHz');
ylabel('\Delta_S / 2\pi MHz');
ylabel(c,'P state population');
title('\Omega_S = 2\pi \times 10 MHz, \Omega_D = 2\pi \times 10 MHz');
daspect([1 1 1]);
set(gcf,'Position',[680 683 560 290])

Omega_S = 2*pi*30;
Omega_D = 2*pi*10;

Ba_SPD_Levels_OpticalBloch_Analytical_DeltaScan
figure
p = pcolor(Delta_D_array,Delta_S_array,sigma_PP_end);
set(p,'linestyle','none');
colormap('jet');
c = colorbar;
cc2 = caxis;
xlabel('\Delta_D / 2\pi MHz');
ylabel('\Delta_S / 2\pi MHz');
ylabel(c,'P state population');
title('\Omega_S = 2\pi \times 30 MHz, \Omega_D = 2\pi \times 10 MHz');
daspect([1 1 1]);
set(gcf,'Position',[680 683 560 290])

Omega_S = 2*pi*10;
Omega_D = 2*pi*30;

Ba_SPD_Levels_OpticalBloch_Analytical_DeltaScan
figure
p = pcolor(Delta_D_array,Delta_S_array,sigma_PP_end);
set(p,'linestyle','none');
colormap('jet');
c = colorbar;
cc3 = caxis;
xlabel('\Delta_D / 2\pi MHz');
ylabel('\Delta_S / 2\pi MHz');
ylabel(c,'P state population');
title('\Omega_S = 2\pi \times 10 MHz, \Omega_D = 2\pi \times 30 MHz');
daspect([1 1 1]);
set(gcf,'Position',[680 683 560 290])

Omega_S = 2*pi*30;
Omega_D = 2*pi*30;

Ba_SPD_Levels_OpticalBloch_Analytical_DeltaScan
figure
p = pcolor(Delta_D_array,Delta_S_array,sigma_PP_end);
set(p,'linestyle','none');
colormap('jet');
c = colorbar;
cc4 = caxis;
xlabel('\Delta_D / 2\pi MHz');
ylabel('\Delta_S / 2\pi MHz');
ylabel(c,'P state population');
title('\Omega_S = 2\pi \times 30 MHz, \Omega_D = 2\pi \times 30 MHz');
daspect([1 1 1]);
set(gcf,'Position',[680 683 560 290])