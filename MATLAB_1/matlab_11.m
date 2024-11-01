clear all,close all,clc
f=60;
A=3;
Fs1=400;
Ts1=1/Fs1;
t1=0:Ts1:.1;
x1=A*sin(2*pi*f*t1);


Fs2=70;
Ts2=1/Fs2;
t2=0:Ts2:.1;
x2=A*sin(2*pi*f*t2);

scatter(t1,x1,'ro'),hold on
scatter(t2,x2,'bo'),grid on

t=0:.001:.1;
x3=-A*cos(2*pi*10*t-pi/2);
plot(t,x3,'k')


% N=length(t);
% figure(1)
% subplot(311),plot(t,x,'r'),grid on,xlabel('t[sec]'),ylabel('x(t)')
% Xf=fftshift(fft(x))/N;
% BW=Fs; % BandWidth=10^4=10kHz
% df=BW/N; %βήμα στη συχνότητα
% f=-BW/2:df:BW/2-df;
% subplot(312),plot(f/1000,abs(Xf)),grid on,xlabel('f[kHz]'),ylabel('Πλάτος(X(f))') % φάσμα πλάτους
% subplot(313),plot(f/1000,angle(Xf)),grid on,xlabel('f[kHz]'),ylabel('Φάση(X(f))') % φάσμα φάσης
% x2=x(1:50000);
% %sound(x2,Fs);
% Ac=1;
% fc=100e3; %100000
% t2=0:Ts:length(x2)/Fs-Ts;
% x2DSB=x2*Ac.*sin(2*fc*t2);
% 
% figure(2)
% plot(t2,x2DSB,'r'),grid on,xlabel('t[sec]'),ylabel('x2(t)')
% 
% %σύμφωνη αποδιαμόρφωση
% xDEMOD=x2DSB*2*Ac.*sin(2*fc*t2+0.1*pi*rand);
% fc=20000;
% [b a]=butter(6,fc/Fs/2);
% xFiltered=filter(b,a,xDEMOD);
% sound(xFiltered,Fs)
% 
% figure(3)
% plot(t2,xFiltered,'r'),grid on,xlabel('t[sec]'),ylabel('x2(t)')