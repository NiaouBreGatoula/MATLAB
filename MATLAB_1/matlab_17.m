clear all,close all,clc
Ebn=0:.1:40;
Q1=erf(sqrt(Ebn));
Q2=erf(sqrt(2*Ebn));
Q3=erf(sqrt(1.2*Ebn));
loglog(Ebn,Q1),hold on
loglog(Ebn,Q2)
loglog(Ebn,Q3),grid on
legend('Σύμφωνη ASK','Σύμφωνη PSK', 'Σύμφωνη FSK')
xlabel('Eb/n'),ylabel('Perror')
Q1(find(Ebn==10))
Q2(find(Ebn==10))
Q3(find(Ebn==10))
%η πιθανότητα λάθος είναι 1 (ίδια και για τις 3 ψηφιακές διαμορφώσεις
