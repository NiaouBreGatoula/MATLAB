clear,close all,clc
%Άσκηση 15
syms n z
x=(n+1)*(heaviside(n)-heaviside(n-4));
X=ztrans(x,n,z);
pretty(X)
x1=(-n+1)*(heaviside(n+3)-heaviside(n-1));
X1=ztrans(x1,n,z);