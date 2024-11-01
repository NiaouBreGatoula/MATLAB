% Ορισμός παραμέτρων
EbNo = 0:20; % Eb/No σε dB
modSchemes = {'qam', 4; 'qam', 16; 'qam', 32; 'qam', 64};

% Προετοιμασία για τον υπολογισμό του BER
berResults = zeros(length(EbNo), length(modSchemes));

% Εκτέλεση υπολογισμών για κάθε σχήμα διαμόρφωσης QAM
for i = 1:length(modSchemes)
    M = modSchemes{i, 2}; % Τάξη QAM
    berResults(:, i) = berawgn(EbNo, modSchemes{i, 1}, M);
end

% Δημιουργία γραφήματος BER προς Eb/No
figure;
semilogy(EbNo, berResults);
grid on;
title('BER vs. Eb/No for Different QAM Modulations');
xlabel('Eb/No (dB)');
ylabel('Bit Error Rate (BER)');
legend('4-QAM', '16-QAM', '32-QAM', '64-QAM', 'Location', 'southwest');

% Καταγραφή BER για Eb/No = 10 dB
EbNoIndex = find(EbNo == 10);
berAt10dB = berResults(EbNoIndex, :);

disp('BER at Eb/No = 10 dB:');
disp(['4-QAM: ', num2str(berAt10dB(1))]);
disp(['16-QAM: ', num2str(berAt10dB(2))]);
disp(['32-QAM: ', num2str(berAt10dB(3))]);
disp(['64-QAM: ', num2str(berAt10dB(4))]);
