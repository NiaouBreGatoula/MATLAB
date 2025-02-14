clear,close all,clc
% %% Άσκηση 25
n=0:3;
% 4 σημείων
x=[3 1 0 0];
w=[1 0 1 -2];
ycconv=cconv(x,w)
X=fft(x,7);
W=fft(w,7);
Y=ifft(X.*W,7)

% 9 σημείων
x=[3 1 0 0 0];
w=[1 0 1 -2 0];
ycconv=cconv(x,w)
X=fft(x,9);
W=fft(w,9);
Y=ifft(X.*W,9)


% γραμμική
x=[3 1 0 0];
w=[1 0 1 -2];
yconv=conv(x,w)
X=fft(x,7);
W=fft(w,7);
Y=ifft(X.*W,7)
