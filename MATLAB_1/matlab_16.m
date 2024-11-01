clear all,close all,clc
Ebn=0:.1:40;
Q1=erf(sqrt(Ebn));
Q2=erf(1.5*sqrt(Ebn));
Q3=erf(sqrt(2*Ebn));
loglog(Ebn,Q1),hold on
loglog(Ebn,Q2)
loglog(Ebn,Q3),grid on
legend('Μονοπολική','Αντίστροφη εναλλασσόμενου σημείου','Διπολική σηματοδοσία')
xlabel('Eb/n'),ylabel('Perror')
% καλύτερη επίδοση έχει το μονοπολικό γιατί έχει μικρότερο σφάλμα