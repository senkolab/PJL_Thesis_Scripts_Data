theta_degree = 0:5:90;
theta_array = theta_degree.*pi./180;
theta = 0;

Ba138_SPDZeeman_Levels_OpticalBloch_DeltaScan;

sigma_PP_end_theta_array = nan(size(sigma_PP_end,1),size(sigma_PP_end,2),numel(theta_array));
sigma_maxPP_theta_array = nan(1,numel(theta_array));

for theta_counter = 1:numel(theta_array)
    theta = theta_array(theta_counter);
    Ba138_SPDZeeman_Levels_OpticalBloch_DeltaScan;
    sigma_PP_end_theta_array(:,:,theta_counter) = sigma_PP_end;
    sigma_maxPP_theta_array(theta_counter) = max(sigma_PP_end(:));
end