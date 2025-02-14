% Άσκηση 4
clear all,close all,clc
figure(1)
n=[-20:20];
p1=((n>=0) & (n<10));
p2=((n>=10) & (n<20));
x=n.*p1+10*exp(-0.3*(n-10)).*p2;
xe=0.5*(x+fliplr(x));
xo=0.5*(x-fliplr(x));
subplot(311),stem(n,x),grid on,xlabel('n'),ylabel('x[n]');
subplot(312),stem(n,xe),grid on,xlabel('n'),ylabel('x_{άρτιο}[n]');
subplot(313),stem(n,xo),grid on,xlabel('n'),ylabel('x_{περιττό}[n]');
figure(2)
n2=[-50:50];
w=randn(1,length(n2));
z=cos(0.04*pi*n2)+0.2*w;
ze=0.5*(z+fliplr(z));
zo=0.5*(z-fliplr(z));
subplot(311),stem(n2,z),grid on,xlabel('n'),ylabel('z[n]');
subplot(312),stem(n2,ze),grid on,xlabel('n'),ylabel('z_{άρτιο}[n]');
subplot(313),stem(n2,zo),grid on,xlabel('n'),ylabel('z_{περιττό}[n]');
