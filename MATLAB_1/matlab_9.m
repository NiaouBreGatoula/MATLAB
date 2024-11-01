% Διαμορφωση ΑΜ ΙΙ
clear all,close all,clc
x=audioread('3WORDS.WAV');
x=x';
Fs=44100;
Ts=1/Fs;
t=0:Ts:length(x)/Fs-Ts;
N=length(t);
figure(1)
subplot(311),plot(t,x,'r'),grid on,xlabel('t[sec]'),ylabel('x(t)')
Xf=fftshift(fft(x))/N;
BW=Fs; % BandWidth=10^4=10kHz
df=BW/N; %βήμα στη συχνότητα
f=-BW/2:df:BW/2-df;
subplot(312),plot(f/1000,abs(Xf)),grid on,xlabel('f[kHz]'),ylabel('Πλάτος(X(f))') % φάσμα πλάτους
subplot(313),plot(f/1000,angle(Xf)),grid on,xlabel('f[kHz]'),ylabel('Φάση(X(f))') % φάσμα φάσης
x2=x(1:50000);
%sound(x2,Fs);
Ac=1;
fc=100e3; %100000
t2=0:Ts:length(x2)/Fs-Ts;
x2DSB=x2*Ac.*sin(2*fc*t2);

figure(2)
plot(t2,x2DSB,'r'),grid on,xlabel('t[sec]'),ylabel('x2(t)')

%σύμφωνη αποδιαμόρφωση
xDEMOD=x2DSB*2*Ac.*sin(2*fc*t2+0.1*pi);
fc=20000;
[b a]=butter(6,fc/Fs/2);
xFiltered=filter(b,a,xDEMOD);
sound(xFiltered,Fs)

figure(3)
plot(t2,xFiltered,'r'),grid on,xlabel('t[sec]'),ylabel('x2(t)')