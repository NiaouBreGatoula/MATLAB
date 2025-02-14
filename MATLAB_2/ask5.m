% Άσκηση 5
clear all,close all,clc
n=0:5;
x1=0.8.^n;
x2=cos(n);
y1=2.^x1;
y2=2.^x2;
y=2.^(x1+x2);
figure(1)
subplot(321),stem(n,x1),grid on,xlabel('n'),ylabel('x_1[n]');
subplot(322),stem(n,y1),grid on,xlabel('n'),ylabel('y_1[n]');

subplot(323),stem(n,x2),grid on,xlabel('n'),ylabel('x_2[n]');
subplot(324),stem(n,y2),grid on,xlabel('n'),ylabel('y_2[n]');

subplot(325),stem(n,x1+x2),grid on,xlabel('n'),ylabel('x_1[n]+x_2[n]');
subplot(326),stem(n,y),grid on,xlabel('n'),ylabel('y(x_1[n]+x_2[n])');

figure(2)
stem(n,y-(y1+y2)),grid on,xlabel('n'),ylabel('y(x_1+x_2)-(y(x_1)+y(x_2))')
