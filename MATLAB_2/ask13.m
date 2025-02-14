clear all,close all,clc
%Άσκηση 13
syms n z a
x=4^n;
X=ztrans(x,n,z)
% α
x1=a^(-n)*4^n
X1=ztrans(x1,n,z)
% β
x2=a^n*4^n
X2=ztrans(x2,n,z)