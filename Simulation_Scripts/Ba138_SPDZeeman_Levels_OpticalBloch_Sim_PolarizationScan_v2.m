theta_S_array = 0:10:180;
theta_D_array = 0:10:180;

Omega_S = 2*pi*15;
Omega_D = 2*pi*25;

theta_s = 0;
theta_d = 0;

Ba138_SPDZeeman_Levels_OpticalBloch_DeltaScan;

sigma_PP_end_theta_array = nan(size(sigma_PP_end,1),size(sigma_PP_end,2),numel(theta_S_array),numel(theta_D_array));
sigma_maxPP_theta_array = nan(numel(theta_S_array),numel(theta_D_array));

for theta_S_counter = 1:numel(theta_S_array)
    for theta_D_counter = 1:numel(theta_D_array)
        theta_s = (pi/180)*theta_S_array(theta_S_counter);
        theta_d = (pi/180)*theta_D_array(theta_D_counter);
        Ba138_SPDZeeman_Levels_OpticalBloch_DeltaScan;
        sigma_PP_end_theta_array(:,:,theta_S_counter,theta_D_counter) = sigma_PP_end;
        sigma_maxPP_theta_array(theta_S_counter,theta_D_counter) = max(sigma_PP_end(:));
    end
end