% Δυαδική ακολουθία
x = [1 1 0 1 0 1 0 0 1 0];

% Παράμετροι
pulse_duration = 6; % διάρκεια παλμού σε δευτερόλεπτα
Fs = 1000; % ρυθμός δειγματοληψίας σε Hz
t = 0:1/Fs:pulse_duration-1/Fs; % χρονικό διάστημα για κάθε παλμό

% Συνολικός χρόνος για την ακολουθία
total_time = pulse_duration * length(x);
t_total = 0:1/Fs:total_time-1/Fs;

% Προετοιμασία για τα σήματα
unipolar_nrz = zeros(1, length(t_total));
bipolar_nrz = zeros(1, length(t_total));
ami = zeros(1, length(t_total));
manchester = zeros(1, length(t_total));

% Δείκτης χρόνου
time_idx = 1;

% Γέμισμα των σημάτων
for i = 1:length(x)
    if x(i) == 1
        unipolar_nrz(time_idx:time_idx + length(t) - 1) = 1;
        bipolar_nrz(time_idx:time_idx + length(t) - 1) = 1;
        manchester(time_idx:time_idx + length(t)/2 - 1) = 1;
        manchester(time_idx + length(t)/2:time_idx + length(t) - 1) = -1;
        if mod(sum(x(1:i)), 2) == 1
            ami(time_idx:time_idx + length(t) - 1) = 1;
        else
            ami(time_idx:time_idx + length(t) - 1) = -1;
        end
    else
        unipolar_nrz(time_idx:time_idx + length(t) - 1) = 0;
        bipolar_nrz(time_idx:time_idx + length(t) - 1) = -1;
        manchester(time_idx:time_idx + length(t)/2 - 1) = -1;
        manchester(time_idx + length(t)/2:time_idx + length(t) - 1) = 1;
        ami(time_idx:time_idx + length(t) - 1) = 0;
    end
    time_idx = time_idx + length(t);
end

% Γραφικές Παραστάσεις
figure;

subplot(4,1,1);
plot(t_total, unipolar_nrz, 'LineWidth', 1.5);
title('Μονοπολική NRZ σηματοδοσία');
xlabel('Χρόνος (s)');
ylabel('Απόκριση');
ylim([-1.5 1.5]);
grid on;

subplot(4,1,2);
plot(t_total, bipolar_nrz, 'LineWidth', 1.5);
title('Διπολική NRZ σηματοδοσία');
xlabel('Χρόνος (s)');
ylabel('Απόκριση');
ylim([-1.5 1.5]);
grid on;

subplot(4,1,3);
plot(t_total, ami, 'LineWidth', 1.5);
title('Σηματοδοσία AMI');
xlabel('Χρόνος (s)');
ylabel('Απόκριση');
ylim([-1.5 1.5]);
grid on;

subplot(4,1,4);
plot(t_total, manchester, 'LineWidth', 1.5);
title('Σηματοδοσία Manchester');
xlabel('Χρόνος (s)');
ylabel('Απόκριση');
ylim([-1.5 1.5]);
grid on;







%{
clear all,close all,clc
x=[1 1 0 1 0 1 0 0 1 0];
Tp=6;
Fs=1000;
t=0:1/Fs:Tp*length(x)-1/Fs;
sign=1;
for i=1:length(t)    
    if x(floor(t(i)/6)+1)==1
        if mod(t(i),6)==0 && i>1
            sign=-sign;
        end
        X_NRZUN(i)=1;
        X_NRZBI(i)=1;
        X_AMI(i)=sign; 
        if mod(floor(t(i)/3),6)==0
            X_MAN(i)=-1;
        else
            X_MAN(i)=1;
        end
        
    else
        X_NRZUN(i)=0;
        X_NRZBI(i)=-1;
        X_AMI(i)=0;
        if mod(floor(t(i)/3),6)==0
            X_MAN(i)=1;
        else
            X_MAN(i)=-1;
        end
        
    end




end
subplot(411),plot(t,X_NRZUN),grid on,ylim([-0.5 1.5])
subplot(412),plot(t,X_NRZBI),grid on,ylim([-1.5 1.5])
subplot(413),plot(t,X_AMI),grid on,ylim([-1.5 1.5])
subplot(414),plot(t,X_MAN),grid on,ylim([-1.5 1.5])
%}
