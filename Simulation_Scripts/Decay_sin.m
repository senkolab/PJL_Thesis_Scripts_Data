function y = Decay_sin(P,x)
Amplitude = P(1);
Pi_time = P(2);
Decay_constant = P(3);

y = (Amplitude/2).*(sin(pi.*x./(Pi_time)-pi/2)).*exp(-Decay_constant.*x)+Amplitude/2;