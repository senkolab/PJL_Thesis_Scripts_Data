%Input 1D array of values of angles in degree into Waveplate_angle
%Input corresponding 1D array of measured beam power values into Beam_power
[BETA,BETA_Err,Exitflag] = Getfunpara(@(P,x) Waveplate_polarizer_power_fun(P,x),[900 100 0],Waveplate_angle,Beam_power);
figure
plot(angle_553, power_553, 'o')
hold on
fine_angles = 50:0.1:115;
plot(fine_angles,Waveplate_polarizer_power_fun(BETA,fine_angles));
pt = PlotText(60,20,{'y = A cos^2(2(x - x_0)) + y_0', ['A = ' num2str(BETA(1)) ' \muW'], ['x_0 = ' num2str(BETA(2)) '^\circ'], ['y_0 = ' num2str(BETA(3)) ' \muW'];});