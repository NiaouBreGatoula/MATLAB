clear,close all,clc
% %% Άσκηση 19
n=[0:6];
x=(n+1).*((n>=0) & (n<4));
y=((n>=0) & (n<=6));
X=fft(x,13)
Y=fft(y,13)
H=X.*Y
h=ifft(H,13)
hconv=conv(x,y)