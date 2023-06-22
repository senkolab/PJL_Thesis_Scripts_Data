Delta_S_array = -100:1:0;
Delta_D_array = -100:1:100;
sigma_PP_end = nan(numel(Delta_S_array),numel(Delta_D_array));
for hh=1:numel(Delta_S_array)
    for hhh=1:numel(Delta_D_array)
        Delta_S = 2*pi*Delta_S_array(hh);
        Delta_D = 2*pi*Delta_D_array(hhh);
        Ba_SPD_Levels_OpticalBloch_Analytical;
        sigma_PP_end(hh,hhh) = sigma_PP;
    end
end
sigma_PP_end(isnan(sigma_PP_end)) = 0;