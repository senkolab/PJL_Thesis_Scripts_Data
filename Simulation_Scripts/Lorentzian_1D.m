function y = Lorentzian_1D(P,x)
centre = P(1);
A = P(2);
width = P(3);
offset = P(4);

y = A./(1+((x-centre)./width).^2) + offset;
end