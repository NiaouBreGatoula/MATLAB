clear,close all,clc
%Άσκηση 21
n=0:31;
x1=[1 zeros(1,31)];
x2=((n>=0) & (n<=4));
x3=((n>=0) & (n<=15));
x4=ones(1,32);
subplot(411),stem(n,abs(fft(x1,32))),grid on,xlabel('k'),ylabel('Μέτρο X_1(k)'),xlim([0,31])
subplot(412),stem(n,abs(fft(x2,32))),grid on,xlabel('k'),ylabel('Μέτρο X_2(k)'),xlim([0,31])
subplot(413),stem(n,abs(fft(x3,32))),grid on,xlabel('k'),ylabel('Μέτρο X_3(k)'),xlim([0,31])
subplot(414),stem(n,abs(fft(x4,32))),grid on,xlabel('k'),ylabel('Μέτρο X_4(k)'),xlim([0,31])