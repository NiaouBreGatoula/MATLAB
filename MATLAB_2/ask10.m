clear all,close all,clc
% Άσκηση 10
n=0:20;
p1=((n>=0)&(n<5));
p2=((n>=0)&(n<6));
x1=-n/8.*p1;
x2=(1-n/3).*p2;
subplot(221),stem(n,x1),grid on,xlabel('n'),ylabel('x1[n]')
subplot(222),stem(n,x2),grid on,xlabel('n'),ylabel('x2[n]')
y=conv(x1,x2);
subplot(223),stem(n,y(1:length(n))),grid on,xlabel('n'),ylabel('y conv')
c = [x1(1) fliplr(x1(end-length(x2)+2:end))];
y2=x2*toeplitz(c,x1);
subplot(224),stem(n,y2),grid on,xlabel('n'),ylabel('y toepliz')
