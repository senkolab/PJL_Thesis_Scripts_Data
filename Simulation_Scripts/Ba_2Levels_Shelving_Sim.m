Omega_SD2 = 2*pi*10;
Delta_SD2 = -2*pi*50;

s1 = zeros(1,2);
s1(1) = 1;

d2 = zeros(1,2);
d2(2) = 1;

cs1 = kron(s1,ones(1,2));
cs1_conj = kron(ones(1,2),s1);

cd2 = kron(d2,ones(1,2));
cd2_conj = kron(ones(1,2),d2);

ind_array = eye(numel(s1));

c_array = nan(numel(s1),numel(cs1));
c_conj_array = nan(numel(s1),numel(cs1));

for c_array_count=1:numel(s1)
    c_array(c_array_count,:) = kron(ind_array(c_array_count,:),ones(1,numel(s1)));
    c_conj_array(c_array_count,:) = kron(ones(1,numel(s1)),ind_array(c_array_count,:));
end

cs1_prime = ...
    -1i.*(Omega_SD2/2).*cd2;
cs1_prime_conj = conj(...
    -1i.*(Omega_SD2/2).*cd2_conj);

cd2_prime = -1i.*(-Delta_SD2).*cd2...
    -1i.*(Omega_SD2/2).*cs1;
cd2_prime_conj = conj(-1i.*(-Delta_SD2).*cd2_conj...
    -1i.*(Omega_SD2/2).*cs1_conj);

c_prime_array = [...
    cs1_prime;...
    cd2_prime];
    
c_prime_conj_array = [...
    cs1_prime_conj;...
    cd2_prime_conj];

Evol_Matrix = nan(numel(cs1),numel(cs1)); %Initialize the matrix for 
%state evolution.

for EM_count1 = 1:numel(s1)
    for EM_count2 = 1:numel(s1)
        Pcount = 0;
        if EM_count1 == 4
            Pcount = Pcount+1;
        end
        if EM_count2 == 4
            Pcount = Pcount+1;
        end
        Evol_Matrix(c_array(EM_count1,:).*c_conj_array(EM_count2,:) == 1,:) =...
            c_array(EM_count1,:).*c_prime_conj_array(EM_count2,:) + c_prime_array(EM_count1,:).*c_conj_array(EM_count2,:)...
            - (1/2).*Pcount.*(gamma_S + gamma_D).*c_array(EM_count1,:).*c_conj_array(EM_count2,:);
    end
end     

deltat = 1e-4;
t_end = 1000;

t=0:deltat:t_end;

sigma_t = nan(numel(cs1),numel(t));
sigma_t(:,1) = 0;
sigma_t(1,1) = 1;

for h=2:numel(t)
    sigma_t_k1 = Evol_Matrix*sigma_t(:,h-1).*(t(h)-t(h-1));
    sigma_t_k2 = Evol_Matrix*(sigma_t(:,h-1)+sigma_t_k1./2).*(t(h)-t(h-1));
    sigma_t_k3 = Evol_Matrix*(sigma_t(:,h-1)+sigma_t_k2./2).*(t(h)-t(h-1));
    sigma_t_k4 = Evol_Matrix*(sigma_t(:,h-1)+sigma_t_k3).*(t(h)-t(h-1));
    
    sigma_t(:,h) = sigma_t(:,h-1) + (1/6).*(sigma_t_k1+2.*sigma_t_k2+2.*sigma_t_k3+sigma_t_k4);
end