%Code for Rotated MOI

Theeta=20;
Ixr=Ix.*(cosd(Theeta)).^2-Ixy.*sind(2*Theeta)+Iy.*(sind(Theeta)).^2
Iyr=Ix.*(sind(Theeta)).^2+Ixy.*sind(2*Theeta)+Iy.*(cosd(Theeta)).^2
Ixyr=Ixy.*cosd(2*Theeta)+0.5*(Ix-Iy)*sind(2*Theeta)
Ixrtot=sum(Ixr)
Iyrtot=sum(Iyr)
Ixyrtot=sum(Ixyr)

phi=0.5*atand(2*Ixytot/(Iytot-Ixtot))
Imax=0.5*(Ixtot+Iytot)+sqrt(Ixytot^2+(0.5*(Ixtot-Iytot))^2)
Imin=0.5*(Ixtot+Iytot)-sqrt(Ixytot^2+(0.5*(Ixtot-Iytot))^2)