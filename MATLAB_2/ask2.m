clear all,close all,clc
%'Ασκηση 2
figure(2)
n=-20+1:20+1;
p=(n>=-4)&(n<=4);
a1=0.3+mod(19390146,4)/2;
a2=1.3+mod(19390146,4)/2;
a3=-2.3+mod(19390146,4)/2;
a4=-0.8+mod(19390146,4)/10;
x1=a1.^n.*p;
x2=a2.^n.*p;
x3=a3.^n.*p;
x4=a4.^n.*p;
subplot(221),stem(n,x1),grid on
subplot(222),stem(n,x2),grid on
subplot(223),stem(n,x3),grid on
subplot(224),stem(n,x4),grid on
