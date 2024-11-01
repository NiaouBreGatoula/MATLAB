% Συνάρτηση sinc
clear all,close all,clc
dt=.1e-4; % 0.0001
t=-.05:dt:.05;
N=length(t);
x=sinc(1000*t);
figure(1)
subplot(311),plot(t,x),grid on,xlabel('t[sec]'),ylabel('sinc(1000t)')
Xf=fftshift(fft(x))/N;
BW=1/dt; % BandWidth=10^4=10kHz
df=BW/N; %βήμα στη συχνότητα
f=-BW/2:df:BW/2-df;
subplot(312),plot(f/1000,abs(Xf)),grid on,xlabel('f[kHz]') % φάσμα πλάτους
subplot(313),plot(f/1000,angle(Xf)),grid on,xlabel('f[kHz]') % φάσμα φάσης
%%%%
x1=sinc(1000*(t-.01));
figure(2)
subplot(311),plot(t,x1),grid on,xlabel('t[sec]'),ylabel('sinc(1000(t-0.01))')
Xf1=fftshift(fft(x1))/N;
subplot(312),plot(f/1000,abs(Xf1)),grid on,xlabel('f[kHz]') % φάσμα πλάτους
subplot(313),plot(f/1000,angle(Xf1)),grid on,xlabel('f[kHz]') % φάσμα φάσης




