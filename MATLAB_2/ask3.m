% % Άσκηση 3
clear all,close all,clc
n=0:20;
x=(cos(pi/6*n)).^2;
y=2*cos(pi*n/6)+2*sin(pi*n/3);
z=4*cos(pi*n/2+pi/8);
w=2*cos(16*pi*n);
f=3*cos(2*n);
subplot(321),stem(n,x),grid on,xlabel('n'),ylabel('x[n]')
subplot(322),stem(n,y),grid on,xlabel('n'),ylabel('y[n]')
subplot(323),stem(n,z),grid on,xlabel('n'),ylabel('z[n]')
subplot(324),stem(n,w),grid on,xlabel('n'),ylabel('w[n]')
subplot(325),stem(n,f),grid on,xlabel('n'),ylabel('f[n]')
