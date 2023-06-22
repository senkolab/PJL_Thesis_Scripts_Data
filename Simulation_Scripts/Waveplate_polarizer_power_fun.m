function power = Waveplate_polarizer_power_fun(P,angle_degree)
Amplitude = P(1);
Angle_shift = P(2);
Offset = P(3);

power = Amplitude.*(cos(2.*pi.*(angle_degree - Angle_shift)./180).^2) + Offset;