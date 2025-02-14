clear,close all,clc
%% Άσκηση 22
n=0:100;
N=length(n);
s=3*cos(pi*n/8);
rn=0.8*randn(1,N);
x=s+rn;
y=zeros(1,N);
M=3;
xzer=[zeros(1,M-1) x];
for i=M:N+(M-1)
    y(i-(M-1))=1/M*sum(xzer(i-(M-1):i));
end
subplot(311),plot(n,s),xlabel('n'),ylabel('s(n)'),title('Αθόρυβο σήμα'),grid on
subplot(312),plot(n,x),xlabel('n'),ylabel('x(n)'),title('Ενθόρυβο σήμα'),grid on
subplot(313),plot(n,y),xlabel('n'),ylabel('x(n)'),title('Έξοδος φίλτρου'),grid on
% το φίλτρο εξαλείφει το γκαουσιανό θόρυβο, καθώς η μέση τιμή του θορύβου
% είναι 0