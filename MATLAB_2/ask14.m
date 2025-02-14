clear all,close all,clc
%Άσκηση 14
n=0:19;
x=0.5.^n;
w=linspace(0,2*pi,100);
XDTFT=zeros(1,length(w));
for k=1:length(w)
    s=0;
    for l=1:length(n)
        s=s+x(l)*exp(-i*w(k)*n(l));
    end
    XDTFT(k)=s;
end
plot(w,abs(XDTFT)),grid on,xlabel('ω'),title('DFTF');
XDFT=fft(x,20);
%XDFT=fftshift(XDFT)
figure,stem(n,abs(XDFT)),grid on,xlabel('k'),title('DFT')