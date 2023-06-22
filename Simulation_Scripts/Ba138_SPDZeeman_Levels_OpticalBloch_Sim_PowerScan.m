Omega_S_array = 2:2:30;
Omega_D_array = 2:2:30;

Omega_S = 2*pi*10;
Omega_D = 2*pi*10;

theta = 0;

Ba138_SPDZeeman_Levels_OpticalBloch_DeltaScan;

sigma_PP_end_O_array = nan(size(sigma_PP_end,1),size(sigma_PP_end,2),numel(Omega_S_array),numel(Omega_D_array));
sigma_maxPP_O_array = nan(numel(Omega_S_array),numel(Omega_D_array));

for Omega_S_counter = 1:numel(Omega_S_array)
    for Omega_D_counter = 1:numel(Omega_D_array)
        if isnan(sigma_maxPP_O_array(Omega_S_counter,Omega_D_counter))
            Omega_S = 2*pi*Omega_S_array(Omega_S_counter);
            Omega_D = 2*pi*Omega_D_array(Omega_D_counter);
            Ba138_SPDZeeman_Levels_OpticalBloch_DeltaScan;
            sigma_PP_end_O_array(:,:,Omega_S_counter,Omega_D_counter);
            sigma_maxPP_O_array(Omega_S_counter,Omega_D_counter) = max(sigma_PP_end(:));
        else
            continue
        end
    end
end