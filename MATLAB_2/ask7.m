clear all,close all,clc
%% Άσκηση 7
n=-10:10;
p=n>=0;
x=0.8.^n.*p;
subplot(221),stem(n,x),grid on,xlabel('n'),ylabel('x_[n]=0.8^n*u(n)')
y=fliplr(x);
subplot(222),stem(n,y),grid on,xlabel('n'),ylabel('y[n]=x[-n]')
% Δεν είναι στατικό γιατί η έξοδος του της στιγμή π.χ. -1 δεν εξαρτάται από
% την είσοδο του την ίδια χρονική στιγμή, δεν είναι επίσης αιτιατό γιατι
% για n<0 η είσοδος είναι 0 ενώ η έξοδος δεν είναι 0
