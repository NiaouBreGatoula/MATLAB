clear all,close all,clc
% Άσκηση 8
n=0:9;
b=[0.3 0.1 0.8];
a=[1 -0.7 -0.3];
delta=n==0;
y=filter(b,a,delta);
x2=[1 1.3 -0.8 +zeros(1,length(n)-3)];
y2=filter(b,a,x2);
subplot(211),stem(n,y),grid on,xlabel('n'),ylabel('y[n]=h[n] (κρουστική απόκριση)');
subplot(212),stem(n,y2),grid on,xlabel('n'),ylabel('y_2[n]');
