%Code for Biaxial Bending

Mx=100;
My=100;
xx=;
yy=;
fb=-My*xx/Iytot+Mx*yy/Ixtot

alpha=atand(My*Ixtot/(Mx*Iytot))

%Code for Unsymmetrical Bending
M=;
theeta=;
Mx=M*cosd(theeta)
My=M*sind(theeta)

fb=(-(My*Ixtot+Mx*Ixytot)*xx+(Mx*Iytot+My*Ixytot)*yy)/(Ixtot*Iytot-Ixytot^2)
alpha=atand((My*Ixtot+Mx*Ixytot)/(Mx*Iytot+My*Ixytot))