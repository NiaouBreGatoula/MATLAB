clear,close all,clc
%% Άσκηση 18
x=[1 2 3 4];
y=[3 -4 6 8];
X=fft(x,7);
Y=fft(y,7);
H=X.*Y;
h=ifft(H,7)
hconv=conv(x,y)