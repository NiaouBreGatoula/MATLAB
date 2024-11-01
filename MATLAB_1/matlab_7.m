% Διαμορφωση ΑΜ ΙΙ
clear all,close all,clc
fm=2;
Fs=2000;
Ts=1/Fs;
Am=1;

Ac=1;
fc=100;
t=0:.001:1;

s=Am*sin(2*pi*fm*t);
xAM=(Ac+s).*sin(2*pi*fc*t);

subplot(211),plot(t,s),grid on,xlabel('t(sec)'),ylabel('s(t)')
subplot(212),plot(t,xAM),grid on,xlabel('t(sec)'),ylabel('x_{AM}(t)'),hold on
[xAM_upper xAM_lower]=envelope(xAM);
subplot(212),plot(t,xAM_upper),legend('x_{AM}','περιβάλλουσα')
