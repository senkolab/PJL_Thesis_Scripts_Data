Omega_e = 2*pi*10;
Omega_g = 2*pi*5;
Delta = -2*pi*2000;

deltat = 1e-4;
t_end = 100;

t=0:deltat:t_end;

cg_t = nan(1,numel(t));
ci_t = nan(1,numel(t));
ce_t = nan(1,numel(t));

cg_t(1) = 1;
ci_t(1) = 0;
ce_t(1) = 0;

for h=2:numel(t)
    cg_t_k1 = -1i*(Omega_g/2)*ci_t(h-1).*(t(h)-t(h-1));
    ci_t_k1 = (1i*Delta*ci_t(h-1) - 1i*(Omega_g/2)*cg_t(h-1) - 1i*(Omega_e/2)*ce_t(h-1)).*(t(h)-t(h-1));
    ce_t_k1 = -1i*(Omega_e/2)*ci_t(h-1).*(t(h)-t(h-1));
    
    cg_t_k2 = -1i*(Omega_g/2)*(ci_t(h-1)+ci_t_k1/2).*(t(h)-t(h-1));
    ci_t_k2 = (1i*Delta*(ci_t(h-1)+ci_t_k1/2) - 1i*(Omega_g/2)*(cg_t(h-1)+cg_t_k1/2) - 1i*(Omega_e/2)*(ce_t(h-1)+ce_t_k1/2)).*(t(h)-t(h-1));
    ce_t_k2 = -1i*(Omega_e/2)*(ci_t(h-1)+ci_t_k1/2).*(t(h)-t(h-1));
    
    cg_t_k3 = -1i*(Omega_g/2)*(ci_t(h-1)+ci_t_k2/2).*(t(h)-t(h-1));
    ci_t_k3 = (1i*Delta*(ci_t(h-1)+ci_t_k2/2) - 1i*(Omega_g/2)*(cg_t(h-1)+cg_t_k2/2) - 1i*(Omega_e/2)*(ce_t(h-1)+ce_t_k2/2)).*(t(h)-t(h-1));
    ce_t_k3 = -1i*(Omega_e/2)*(ci_t(h-1)+ci_t_k2/2).*(t(h)-t(h-1));
    
    cg_t_k4 = -1i*(Omega_g/2)*(ci_t(h-1)+ci_t_k3).*(t(h)-t(h-1));
    ci_t_k4 = (1i*Delta*(ci_t(h-1)+ci_t_k3) - 1i*(Omega_g/2)*(cg_t(h-1)+cg_t_k3) - 1i*(Omega_e/2)*(ce_t(h-1)+ce_t_k3)).*(t(h)-t(h-1));
    ce_t_k4 = -1i*(Omega_e/2)*(ci_t(h-1)+ci_t_k3).*(t(h)-t(h-1));
    
    cg_t(h) = cg_t(h-1) + (1/6).*(cg_t_k1+2.*cg_t_k2+2.*cg_t_k3+cg_t_k4);
    ci_t(h) = ci_t(h-1) + (1/6).*(ci_t_k1+2.*ci_t_k2+2.*ci_t_k3+ci_t_k4);
    ce_t(h) = ce_t(h-1) + (1/6).*(ce_t_k1+2.*ce_t_k2+2.*ce_t_k3+ce_t_k4);
end