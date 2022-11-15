% Code for MOI
clear all
clc

x=[.35 .75 1.2];       %Centroid x
y=[1.95 1 .05];       %Centroid y
lx=[.7 .1 .8];      %Length x
ly=[.1 2 .1];      %Length y
A=lx.*ly    %Area
Cx=sum(x.*A)/sum(A)
Cy=sum(y.*A)/sum(A)
dy=y-Cy
dx=x-Cx
Ix=(1/12).*lx.*ly.^3+A.*dy.^2
Iy=(1/12).*ly.*lx.^3+A.*dx.^2
Ixy=0+A.*dx.*dy
Ixtot=sum(Ix)
Iytot=sum(Iy)
Ixytot=sum(Ixy)