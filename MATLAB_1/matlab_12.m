clear all,close all,clc
x=load('handel.mat');
%sound(x.y,x.Fs)
t=(0:(length(x.y)-1))/x.Fs;
subplot(211),plot(t,x.y),grid on,xlabel('t(s)'),ylabel('y'),title('Hallelujah Chorus')
y2=downsample(x.y,2);
t2=(0:(length(y2)-1))/(x.Fs/2);
subplot(212),plot(t2,y2),grid on,xlabel('t(s)'),ylabel('y'),title('Hallelujah Chorus')
sound(y2,x.Fs/2)
% Στο σήμα υπάρχει αλλοίωση γιατί έχουμε τη μισή συχνότητα δειγματοληψίας
% συνεπώς σύμφωνα με το θεώρημα του Nyiquist η μέγιστη συχνότητα που θα έχει το σήμα θα είναι 
% 2048Hz=Fs/2