clear,close all,clc
%%Άσκηση 20
n=0:15;
x=n;
w=linspace(0,2*pi,100);
XDTFT=zeros(1,length(w));
for k=1:length(w)
    s=0;
    for l=1:length(n)
        s=s+x(l)*exp(-i*w(k)*n(l));
    end
    XDTFT(k)=s;
end
plot(w,abs(XDTFT)),grid on,xlabel('ω'),hold on
XDFT=fft(x,length(x));
XDFT32=fft(x,32);
%XDFT=fftshift(XDFT)
stem((2*pi*[0:31]/32),abs(XDFT32)),grid on,ylabel('Μέτρο')
stem((2*pi*n/length(n)),abs(XDFT)),grid on,xlabel('ω(rad/sec)')
legend('DTFT','DFT_{16}','DFT_{32}')