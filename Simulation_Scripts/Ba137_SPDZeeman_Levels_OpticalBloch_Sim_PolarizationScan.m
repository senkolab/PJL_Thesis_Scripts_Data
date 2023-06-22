theta_S_array = 0:10:180;
theta_D_array = 0:10:180;

Ba137_SPDZeeman_Levels_OpticalBloch_init_prototype;

Omega_S1P2 = 2*pi*20;
Omega_S2P2 = 2*pi*20;
Omega_D0P1 = 2*pi*15;
Omega_D1P1 = 2*pi*15;
Omega_D2P2 = 2*pi*15;
Omega_D3P2 = 2*pi*15;

theta_s = 0;
theta_d = 0;

Lambda_detune = 10;

Ba137_SPDZeeman_Levels_OpticalBloch_DeltaScan;

sigma_PP_end_theta_array = nan(size(sigma_PP_end,1),size(sigma_PP_end,2),numel(theta_S_array),numel(theta_D_array));
sigma_maxPP_theta_array = nan(numel(theta_S_array),numel(theta_D_array));

for theta_S_counter = 1:numel(theta_S_array)
    for theta_D_counter = 1:numel(theta_D_array)
        theta_s = (pi/180)*theta_S_array(theta_S_counter);
        theta_d = (pi/180)*theta_D_array(theta_D_counter);
        Ba137_SPDZeeman_Levels_OpticalBloch_DeltaScan;
        sigma_PP_end_theta_array(:,:,theta_S_counter,theta_D_counter) = sigma_PP_end;
        sigma_maxPP_theta_array(theta_S_counter,theta_D_counter) = max(sigma_PP_end(:));
    end
end