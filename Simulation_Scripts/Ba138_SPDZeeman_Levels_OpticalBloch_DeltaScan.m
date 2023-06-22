%Delta_S_array = -100:2:0;
%Delta_D_array = -100:2:100;
Delta_S_array = -100:10:0;
Delta_D_array = -100:10:100;
sigma_PP_end = nan(numel(Delta_S_array),numel(Delta_D_array));
for hh=1:numel(Delta_S_array)
    for hhh=1:numel(Delta_D_array)
        Delta_SP01 = 2*pi*Delta_S_array(hh);
        Delta_DP01 = 2*pi*Delta_D_array(hhh);
        Ba138_SPDZeeman_Levels_OpticalBloch_linsolve_v2;
        sigma_PP_end(hh,hhh) = sigma_end(cp0.*cp0_conj == 1)+sigma_end(cp1.*cp1_conj == 1);
    end
end