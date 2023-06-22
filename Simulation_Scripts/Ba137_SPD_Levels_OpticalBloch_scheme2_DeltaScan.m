Delta_S_array = -500:10:-20;
Delta_D_array = -1500:10:500;
sigma_PP_end = nan(numel(Delta_S_array),numel(Delta_D_array));
for hh=1:numel(Delta_S_array)
    for hhh=1:numel(Delta_D_array)
        Delta_S1 = 2*pi*Delta_S_array(hh);
        Delta_S2 = 2*pi*(Delta_S_array(hh)+S_hyperfine_detune);
        Delta_D0 = 2*pi*Delta_D_array(hhh);
        Delta_D1 = 2*pi*(Delta_D_array(hhh)+D_hyperfine_detune12);
        Delta_D2 = 2*pi*(Delta_D_array(hhh));
        Delta_D3 = 2*pi*(Delta_D_array(hhh)+D_hyperfine_detune34);
        Ba137_SPD_Levels_OpticalBloch_Sim_fast_scheme2
        sigma_PP_end(hh,hhh) = real(sigma_t(P1P1,end)+sigma_t(P2P2,end));
    end
end