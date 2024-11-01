% Αρχικές παράμετροι
fc = 100e3; % Φέρουσα συχνότητα 100 KHz
T = 3e-3; % Διάρκεια κάθε bit 3 ms
fs = 1e6; % Ρυθμός δειγματοληψίας 1 MHz

% Σήμα πληροφορίας
m = [1 0 1 0 0 0 1 1 1];
bit_duration = T * fs;
t = 0:1/fs:T*length(m)-1/fs;

% Δημιουργία σήματος πληροφορίας m(t)
m_signal = [];
for bit = m
    m_signal = [m_signal bit*ones(1, bit_duration)];
end

% Διαμόρφωση BPSK
carrier = cos(2*pi*fc*t);
bpsk_signal = (2*m_signal - 1) .* carrier;

% Υπολογισμός φάσματος
nfft = 2^nextpow2(length(t));
f = fs/2*linspace(0,1,nfft/2+1);

m_spectrum = fft(m_signal, nfft) / length(t);
bpsk_spectrum = fft(bpsk_signal, nfft) / length(t);

% Γραφικές παραστάσεις
figure;

% Χρονικά σήματα
subplot(2,2,1);
plot(t, m_signal);
title('Σήμα Πληροφορίας m(t)');
xlabel('Χρόνος (s)');
ylabel('Πλάτος');

subplot(2,2,2);
plot(t, bpsk_signal);
title('Διαμορφωμένο Σήμα BPSK');
xlabel('Χρόνος (s)');
ylabel('Πλάτος');

% Φάσματα
subplot(2,2,3);
plot(f, 2*abs(m_spectrum(1:nfft/2+1)));
title('Φάσμα Πλάτους του Σήματος Πληροφορίας');
xlabel('Συχνότητα (Hz)');
ylabel('Πλάτος');

subplot(2,2,4);
plot(f, 2*abs(bpsk_spectrum(1:nfft/2+1)));
title('Φάσμα Πλάτους του Διαμορφωμένου Σήματος BPSK');
xlabel('Συχνότητα (Hz)');
ylabel('Πλάτος');
