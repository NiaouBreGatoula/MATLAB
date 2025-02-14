clear all,close all,clc
% Άσκηση 6
n=0:20;
p=((n>=0)&(n<5));
x1=0.8.^n.*p;
p2=((n>=3)&(n<8));
x2=0.8.^n.*p2;
figure(1)
subplot(221),stem(n,x1),grid on,xlabel('n'),ylabel('x_1[n]')
subplot(222),stem(n,x1.*x1),grid on,xlabel('n'),ylabel('y_1[n]')
subplot(223),stem(n,x2),grid on,xlabel('n'),ylabel('x_2[n]=x_1[n-3]')
subplot(224),stem(n,x2.*x2),grid on,xlabel('n'),ylabel('y_2[n]')
figure(2)
subplot(221),stem(n,x1),grid on,xlabel('n'),ylabel('x_1[n]')
subplot(222),stem(n,n.*x1),grid on,xlabel('n'),ylabel('y_1[n]=n*x_1[n]')
subplot(223),stem(n,x2),grid on,xlabel('n'),ylabel('x_2[n]=x_1[n-3]')
subplot(224),stem(n,n.*x2),grid on,xlabel('n'),ylabel('y_2[n]=n*x_1[n-3]')
