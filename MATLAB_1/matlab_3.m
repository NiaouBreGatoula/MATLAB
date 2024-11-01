% Συνάρτηση FFT sinc
clear all,close all,clc
Fs=80; % sampling frequency  80Hz
Ts=1/Fs;
t=0:Ts:.8;
N=length(t);
x=3*cos(4*pi*t)+2*cos(8*pi*t)+sin(12*pi*t);
figure(1)
subplot(311),scatter(t,x,'k.'),grid on,xlabel('t[sec]'),ylabel('3sin(4πt)+2cos(8πt)+sin(12πt)')
Xf=fftshift(fft(x))/N;
BW=Fs; % BandWidth=10^4=10kHz
df=BW/N; %βήμα στη συχνότητα
f=-BW/2:df:BW/2-df;
subplot(312),plot(f,abs(Xf)),grid on,xlabel('f[Hz]') % φάσμα πλάτους
subplot(313),plot(f,angle(Xf)),grid on,xlabel('f[Hz]') % φάσμα φάσης
