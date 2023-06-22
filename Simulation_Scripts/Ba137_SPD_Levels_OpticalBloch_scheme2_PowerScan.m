power_fraction = 0.1:0.1:1;

S_hyperfine_detune = 0;
D_hyperfine_detune12 = 50;
D_hyperfine_detune34 = 50;

Omega_S1 = 899.4180;
Omega_S2 = 899.4180;
Omega_D0 = 1.4169e+03;
Omega_D1 = 1.4169e+03;
Omega_D2 = 1.4169e+03;
Omega_D3 = 1.4169e+03;
Ba137_SPD_Levels_OpticalBloch_scheme2_DeltaScan;

sigma_PP_end_pfarray = nan(size(sigma_PP_end,1),size(sigma_PP_end,2),numel(power_fraction));
sigma_maxPP_pfarray = nan(1,numel(power_fraction));

for pf_counter = 1:numel(power_fraction)
    Omega_S1 = sqrt(power_fraction(pf_counter))*899.4180;
    Omega_S2 = sqrt(power_fraction(pf_counter))*899.4180;
    Omega_D0 = sqrt(power_fraction(pf_counter))*1.4169e+03;
    Omega_D1 = sqrt(power_fraction(pf_counter))*1.4169e+03;
    Omega_D2 = sqrt(power_fraction(pf_counter))*1.4169e+03;
    Omega_D3 = sqrt(power_fraction(pf_counter))*1.4169e+03;
    Ba137_SPD_Levels_OpticalBloch_scheme2_DeltaScan;
    sigma_PP_end_pfarray(:,:,pf_counter) = sigma_PP_end;
    sigma_maxPP_pfarray(pf_counter) = max(sigma_PP_end(:));
end