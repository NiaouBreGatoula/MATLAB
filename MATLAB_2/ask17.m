clear,close all,clc
%% Άσκηση 17
syms n z
x=(3+2*n)*heaviside(n);
X=ztrans(x,n,z)
[N,D]=numden(X)
num=double(coeffs(N,z))
den=double(coeffs(D,z))
zplane(num,den);