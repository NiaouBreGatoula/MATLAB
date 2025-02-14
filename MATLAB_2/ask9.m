clear all,close all,clc
n=0:9;
b=[0.3 0.1 0.8];
a=[1 -0.7 -0.3];
x=[1 1.3 -0.8 +zeros(1,length(n)-3)];
zi=filtic(b,a,[0.2 0.6],[0])
y=filter(b,a,x,zi);
stem(n,y),grid on,xlabel('n'),ylabel('y[n]');