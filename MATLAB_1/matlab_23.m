% Καθαρισμός του περιβάλλοντος εργασίας
clear; clc;

% Ορισμός των παραμέτρων
M = 8; % 8-PSK
k = log2(M); % Bits per symbol
EbNo = 0:12; % Eb/No range in dB
ber_nocoding = zeros(1, length(EbNo));
ber_block = zeros(1, length(EbNo));
ber_conv = zeros(1, length(EbNo));

% Υπολογισμός BER χωρίς κωδικοποίηση
ber_nocoding = berawgn(EbNo, 'psk', M, 'nondiff');

% Υπολογισμός BER με block κωδικοποίηση (7,4) Hamming code
n = 7; k_block = 4; % Hamming (7,4)
ber_block = bercoding(EbNo, 'block', 'hard', n, k_block, 'psk', M);

% Υπολογισμός BER με συνελικτική κωδικοποίηση
trellis = poly2trellis(7, [171 133]); % Κωδικοποιητής συνελικτικής κωδικοποίησης
tbl = 34; % Truncation length
ber_conv = bercoding(EbNo, 'conv', 'hard', trellis, tbl, 'psk', M);

% Γράφημα BER vs Eb/No
figure;
semilogy(EbNo, ber_nocoding, 'b-o');
hold on;
semilogy(EbNo, ber_block, 'r-*');
semilogy(EbNo, ber_conv, 'g-^');
hold off;

% Προσθήκη τίτλων και ετικετών
title('BER vs. Eb/No for 8PSK Modulation');
xlabel('Eb/No (dB)');
ylabel('Bit Error Rate (BER)');
legend('No coding', 'Block coding (7,4)', 'Convolutional coding (171,133)');
grid on;
