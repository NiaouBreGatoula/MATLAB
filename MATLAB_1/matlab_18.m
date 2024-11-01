clear all,close all,clc
a=randi(16,10000,1)-1;
x=qammod(a,16);
subplot(311),scatter(real(x),imag(x)),grid on
xn=awgn(x,12);
subplot(312),scatter(real(xn),imag(xn),'.'),grid on
hold on,scatter(real(x),imag(x),'r*'),grid on
y=qamdemod(xn,16);
yy=qammod(y,16);
subplot(313),scatter(real(yy),imag(yy),'.'),grid on
