B_e_array = 0:0.001:10;
E_array = nan(24,numel(B_e_array));
eigvectors_array = nan(24,24,numel(B_e_array));
for hh=1:numel(B_e_array)
    if hh>1
        eigvectors_ref = eigvectors;
    end
    [E_levels, eigvectors] = GetHyperfineEnergies(3/2,5/2,2,-12.028,59.533,B_e_array(hh));
    if B_e_array(hh)>0.04
        sort_index = nan(24,1);
        E_levels_new = nan(24,1);
        eigvectors_new = nan(size(eigvectors));
        for hhh = 1:24
            max_index = find(abs(eigvectors_ref(:,hhh)'*eigvectors) == max(abs(eigvectors_ref(:,hhh)'*eigvectors)));
            sort_index(hhh) = max_index;
            E_levels_new(hhh) = E_levels(max_index);
            eigvectors_new(:,hhh) = eigvectors(:,max_index);
        end
        E_levels = E_levels_new;
        eigvectors = eigvectors_new;
        %E_levels = E_levels(sort_index);
        %eigvectors = eigvectors(:,sort_index);
    else
        [E_levels_new,sort_index] = sort(E_levels);
        E_levels = E_levels_new;
        eigvectors = eigvectors(:,sort_index);
    end
    %eigvectors = eigvectors(:,sortindex);
    %eigvectors_array(:,:,hh) = eigvectors(:,sortindex);
    %E_levels = E_levels - max(E_levels) - 453.6;
    %E_levels = sort(E_levels);
    E_array(:,hh) = E_levels;
    eigvectors_array(:,:,hh) = eigvectors;
end