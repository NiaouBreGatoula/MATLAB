% Φάσμα ημιτονοειδούς σήματος
clear all,close all,clc
f=40;
Fs=2000;
Ts=1/Fs;
A=12;
phase=2*pi/3;
t=0:Ts:1.5;
x=A*sin(2*pi*f*t+phase);
N=length(t);
figure(1)
subplot(311),plot(t,x,'r'),grid on,xlabel('t[sec]'),ylabel('x(t)')
Xf=fftshift(fft(x))/N;
BW=Fs; % BandWidth=10^4=10kHz
df=BW/N; %βήμα στη συχνότητα
f=-BW/2:df:BW/2-df;
subplot(312),plot(f,abs(Xf)),grid on,xlabel('f[Hz]'),ylabel('Πλάτος(X(f))') % φάσμα πλάτους
subplot(313),plot(f,angle(Xf)),grid on,xlabel('f[Hz]'),ylabel('Φάση(X(f))') % φάσμα φάσης
