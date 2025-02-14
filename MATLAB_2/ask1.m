clear,close all,clc
% Άσκηση 1
figure(1)
n=-20:20;
m=length(n);
p=((n>=-5)&(n<=5));
x=0.8.^n.*p;
subplot(231),stem(n,x),grid on,xlabel('n'),ylabel('x[n]')

p2=((n-5>=-5)&(n-5<=5));
x2=0.8.^(n-5).*p2;
subplot(232),stem(n,x2),grid on,xlabel('n'),ylabel('x[n-5]')

p3=((n+5>=-5)&(n+5<=5));
x3=0.8.^(n+5).*p3;
subplot(233),stem(n,x3),grid on,xlabel('n'),ylabel('x[n+5]')

x4=fliplr(x);
subplot(234),stem(n,x4),grid on,xlabel('n'),ylabel('x[-n]')

x5=downsample(x,4);
subplot(235),stem(-(length(x5)-1)/2:(length(x5)-1)/2,x5),grid on,xlabel('n'),ylabel('x[4n]')

x6=upsample(x,3);
subplot(236),stem(-(length(x6)-1)/2:(length(x6)-1)/2,x6),grid on,xlabel('n'),ylabel('x[n/3]')

% εύρεση πρώτου και τελευταίου σημείου του άξονα n με μη μηδενική τιμή
nonZero=find(x>0);
shft=-(n(1)-1);
fprintf('Για το σήμα x[n] η πρώτη μη μηδενική τιμή είναι για n=%d και η τελευταία είναι για n=%d\n',nonZero(1)-shft,nonZero(length(nonZero))-shft);

nonZero=find(x2>0);
shft=-(n(1)-1);
fprintf('Για το σήμα x[n-5] η πρώτη μη μηδενική τιμή είναι για n=%d και η τελευταία είναι για n=%d\n',nonZero(1)-shft,nonZero(length(nonZero))-shft);

nonZero=find(x3>0);
shft=-(n(1)-1);
fprintf('Για το σήμα x[n+5] η πρώτη μη μηδενική τιμή είναι για n=%d και η τελευταία είναι για n=%d\n',nonZero(1)-shft,nonZero(length(nonZero))-shft);

nonZero=find(x>0);
shft=-(n(1)-1);
fprintf('Για το σήμα x[-n] η πρώτη μη μηδενική τιμή είναι για n=%d και η τελευταία είναι για n=%d\n',nonZero(1)-shft,nonZero(length(nonZero))-shft);


nonZero=find(x5~=0);
shft=-(-(length(x5)-1)/2-1);
fprintf('Για το σήμα x[4n] η πρώτη μη μηδενική τιμή είναι για n=%d και η τελευταία είναι για n=%d\n',nonZero(1)-shft,nonZero(length(nonZero))-shft);

nonZero=find(x6~=0);
shft=-(-(length(x6)-1)/2-1);
fprintf('Για το σήμα x[n/3] η πρώτη μη μηδενική τιμή είναι για n=%d και η τελευταία είναι για n=%d\n',nonZero(1)-shft,nonZero(length(nonZero))-shft);
