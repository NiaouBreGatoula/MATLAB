clear all,close all,clc
SNR=200;
B=1:300000;
C=B.*log2(1+SNR./B);
semilogx(B,C),grid on,ylabel('bps'),xlabel('Hz')
%η τιμή που τείνει η χωρητικότητα του καναλιού είναι 300bps δηλαδή αυτή που
%προβλέπεται από τη θεωρία
