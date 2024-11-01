clear all; close all; clc;

% Άνοιγμα του αρχείου και ανάγνωση του κειμένου
fileID = fopen('text.txt', 'r');
A = fscanf(fileID, '%c');
fclose(fileID);

% Αρχικοποίηση του πίνακα συχνοτήτων
f = zeros(27, 1);
AZ = ['abcdefghijklmnopqrstuvwxyz '];

% Υπολογισμός συχνοτήτων εμφάνισης χαρακτήρων
for i = 1:length(A)
    if A(i) ~= ' '
        idx = double(A(i)) - double('a') + 1;
    else
        idx = 27; % Δείκτης για το κενό
    end
    f(idx) = f(idx) + 1;
end

% Υπολογισμός σχετικών συχνοτήτων
Freq = f / sum(f);

% Γράφημα σχετικών συχνοτήτων
bar(Freq);
xticks(1:27);
xticklabels(cellstr(AZ'));
grid on;

% Υπολογισμός εντροπίας
S = 0;
for i = 1:length(Freq)
    if Freq(i) ~= 0
        S = S - Freq(i) * log2(Freq(i));
    end
end
fprintf('Entropy is %f bps\n', S);

% Δημιουργία του λεξικού Huffman
dict = huffmandict(cellstr(AZ'), Freq);

% Κωδικοποίηση του κειμένου
A = lower(A); % Μετατροπή του κειμένου σε πεζά
code = huffmanenco(cellstr(A')', dict);

% Υπολογισμός της απόδοσης και του πλεονασμού
averageLength = sum(cellfun('length', dict(:,2)) .* Freq);
efficiency = S / averageLength;
redundancy = 1 - efficiency;
fprintf('Average code length: %f bits/symbol\n', averageLength);
fprintf('Efficiency: %f\n', efficiency);
fprintf('Redundancy: %f\n', redundancy);

% Εύρεση των πιο συχνών και πιο σπάνιων χαρακτήρων
[~, mostFrequentIdx] = max(Freq);
[~, leastFrequentIdx] = min(Freq(Freq > 0)); % Αποφυγή μηδενικών συχνοτήτων
fprintf('Most frequent character: %s, Huffman code: %s\n', AZ(mostFrequentIdx), num2str(dict{mostFrequentIdx, 2}));
fprintf('Least frequent character: %s, Huffman code: %s\n', AZ(leastFrequentIdx), num2str(dict{leastFrequentIdx, 2}));
