clear all,close all,clc
%% Άσκηση 11
n=0:10;
x=1./(n+1);
Ex=sum(x.^2)
X=fft(x,length(n));
EX=1/length(n)*sum(abs(X).^2)
fprintf('Η ενέργεια το σήματος x είναι %f\n',Ex);
fprintf('Η ενέργεια το σήματος X είναι %f\n',EX);
