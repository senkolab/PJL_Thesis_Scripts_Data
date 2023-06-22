Ba137_SPDZeeman_Levels_OpticalBloch_init_prototype;

Omega_S1P2 = 2*pi*10;
Omega_S2P2 = 2*pi*10;
Omega_D0P1 = 2*pi*10;
Omega_D1P1 = 2*pi*10;
Omega_D2P2 = 2*pi*10;
Omega_D3P2 = 2*pi*10;

Lambda_detune = 10;

Ba137_SPDZeeman_Levels_OpticalBloch_DeltaScan;
figure
p = pcolor(Delta_D_array,Delta_S_array,real(sigma_PP_end));
set(p,'linestyle','none');
colormap('jet');
c = colorbar;
cc1 = caxis;
xlabel('\Delta_D / 2\pi MHz');
ylabel('\Delta_S / 2\pi MHz');
ylabel(c,'P state population');
title('\Omega_S = 2\pi \times 10 MHz, \Omega_D = 2\pi \times 10 MHz');

Ba137_SPDZeeman_Levels_OpticalBloch_init_prototype;

Omega_S1P2 = 2*pi*30;
Omega_S2P2 = 2*pi*30;
Omega_D0P1 = 2*pi*30;
Omega_D1P1 = 2*pi*30;
Omega_D2P2 = 2*pi*30;
Omega_D3P2 = 2*pi*30;

Lambda_detune = 10;

Ba137_SPDZeeman_Levels_OpticalBloch_DeltaScan;
figure
p = pcolor(Delta_D_array,Delta_S_array,real(sigma_PP_end));
set(p,'linestyle','none');
colormap('jet');
c = colorbar;
cc2 = caxis;
xlabel('\Delta_D / 2\pi MHz');
ylabel('\Delta_S / 2\pi MHz');
ylabel(c,'P state population');
title('\Omega_S = 2\pi \times 30 MHz, \Omega_D = 2\pi \times 30 MHz');