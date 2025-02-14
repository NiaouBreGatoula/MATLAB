clear; close all; clc;
% Άσκηση 16
a = [0.1, 0.3, 0.6];
n = 0:19;
x1 = a(1).^n;
x2 = a(2).^n;
x3 = a(3).^n;

w = linspace(0, 2*pi, 100);
X1 = zeros(1, length(w));
X2 = zeros(1, length(w));
X3 = zeros(1, length(w));

for k = 1:length(w)
    s1 = 0; s2 = 0; s3 = 0;
    for l = 1:length(n)
        s1 = s1 + x1(l) * exp(-1i * w(k) * n(l));
        s2 = s2 + x2(l) * exp(-1i * w(k) * n(l));
        s3 = s3 + x3(l) * exp(-1i * w(k) * n(l));
    end
    X1(k) = s1;
    X2(k) = s2;
    X3(k) = s3;
end

figure(1)
subplot(211), plot(w, abs(X1)), grid on, xlabel('ω'), title('Μέτρο μετασχηματισμού Fourier x=0.1^n'), ylabel('Μέτρο');
subplot(212), plot(w, angle(X1) * 180 / pi), grid on, xlabel('ω'), title('Φάση '), ylabel('Φάση(deg)');

figure(2)
subplot(211), plot(w, abs(X2)), grid on, xlabel('ω'), title('Μέτρο μετασχηματισμού Fourier x=0.3^n'), ylabel('Μέτρο');
subplot(212), plot(w, angle(X2) * 180 / pi), grid on, xlabel('ω'), title('Φάση '), ylabel('Φάση(deg)');

figure(3)
subplot(211), plot(w, abs(X3)), grid on, xlabel('ω'), title('Μέτρο μετασχηματισμού Fourier x=0.6^n'), ylabel('Μέτρο');
subplot(212), plot(w, angle(X3) * 180 / pi), grid on, xlabel('ω'), title('Φάση '), ylabel('Φάση(deg)');
