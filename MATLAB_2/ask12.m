clear all,close all,clc
% Άσκηση 12
syms n z
h=0.7^n;
H=ztrans(0.7^n,n,z)
[N,D]=numden(H)
num=double(coeffs(N,z));
den=double(coeffs(D,z));
zplane(num,den);
%το σύστημα είναι ευσταθές γιατί οι πόλοι είναι εντός του μοναδιαίου
%κύκλου