clear all,close all,clc
Fs=1200;
t=0:1/Fs:0.02-1/Fs;
x=2*sin(200*pi*t)+5*cos(100*pi*t);
subplot(211),plot(t,x),grid on,hold on,stem(t,x)
% κβαντοποίηση
for i=1:length(x)
    if x(i)<-3
        x(i)=-4.5;
    elseif x(i)<0
        x(i)=-1.5;
    elseif x(i)<3
        x(i)=1.5;
    else
        x(i)=4.5;
    end
end
subplot(212)
hStem=stem(t,x);
grid on
% κωδικοποίηση
X=[];
k=1;
for i=1:length(x)
    if x(i)==-4.5
        X=[X "00"];
    elseif x(i)==-1.5
        X=[X "01"];
    elseif x(i)==1.5
        X=[X "10"];
    else
        X=[X "11"];
    end
    k=k+1;
end
%// Get position of each stem 'bar'. Sorry I don't know how to name them.
X_data = get(hStem, 'XData');
Y_data = get(hStem, 'YData');

%// Assign labels.
for labelID = 1 : numel(X_data)
   text(X_data(labelID), Y_data(labelID) + 3, X{labelID}, 'HorizontalAlignment', 'center','rotation',90);
end
