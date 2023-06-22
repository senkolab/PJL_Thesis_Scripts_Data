Ba138_SPDZeeman_Levels_OpticalBloch_Sim_PowerScan_v2;

p = pcolor(Omega_D_array,Omega_S_array,real(sigma_maxPP_O_array));
set(p,'linestyle','none');
xlabel('\Omega_D / 2\pi MHz');
ylabel('\Omega_S / 2\pi MHz');
c = colorbar;
ylabel(c,'P state population');
colormap('jet');