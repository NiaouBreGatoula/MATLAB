% Δημιουργία πίνακα ελέγχου ισοτιμίας και γεννήτορα για κώδικα Hamming (7,4)
[m, g, n, k] = hammgen(3);
disp('Πίνακας Ελέγχου Ισοτιμίας (H):');
disp(m);
disp('Πίνακας Γεννήτορας (G):');
disp(g);
disp(['Πλήθος bits κωδικής λέξης: ', num2str(n)]);
disp(['Πλήθος bits μηνύματος πληροφορίας: ', num2str(k)]);
messages = de2bi(0:2^k-1, k, 'left-msb');
% Κωδικοποίηση των μηνυμάτων με χρήση του κώδικα Hamming
encoded_messages = encode(messages, n, k, 'hamming');
disp('Όλα τα πιθανά δυαδικά μηνύματα:');
disp(messages);
disp('Κωδικοποιημένα μηνύματα:');
disp(encoded_messages);
code = encode(eye(k), n, k, 'hamming');
dmin = min(gfweight(code));
disp(['Ελάχιστη απόσταση του κώδικα: ', num2str(dmin)]);
