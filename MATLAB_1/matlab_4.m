% Φάσμα Gaussian pulse 
clear all,close all,clc
sigma=.1;
Fs=100;
Ts=1/Fs;
t=-.5:Ts:.5;
g=1/sqrt(2*pi*sigma)*exp(-t.^2/(2*sigma^2));
N=length(t);
figure(1)
subplot(311),plot(t,g,'r'),grid on,xlabel('t[sec]'),ylabel('g(t)')
Gf=fftshift(fft(g))/N;
BW=Fs; % BandWidth=10^4=10kHz
df=BW/N; %βήμα στη συχνότητα
f=-BW/2:df:BW/2-df;
subplot(312),plot(f,abs(Gf)),grid on,xlabel('f[Hz]'),ylabel('Πλάτος(G(f))') % φάσμα πλάτους
subplot(313),plot(f,angle(Gf)),grid on,xlabel('f[Hz]'),ylabel('Φάση(G(f))') % φάσμα φάσης
