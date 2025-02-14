clear,close all,clc
%% Άσκηση 24
n=0:8;
x=[1 0 0 0 -1 0 0 0 -3];
w=[6 0 4 2 -2 0 0 0 0];
yconv=conv(x,w)
X=fft(x,17);
W=fft(w,17);
Y=ifft(X.*W,17)