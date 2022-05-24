function [X] = gepp(A, b)
%Funkcja gepp oblicza rozwiazania ukladu rownan liniowych(u. r. l.)
%postaci A*x = b
%A - macierz u. r. l., b - macierz wynikow, X - rozwiazania ukladu

%pobranie rozmiaru macierzy
[n, m] = size(A);
%sprawdzenie czy jest kwadratowa
if(n ~= m)
    disp("Macierz nie jest kwadratowa");
    return;
end

%iteracja przez kolejne kroki eliminacji
for i = 1 : n
    
    %znalezienie najwiekszego elementu w i-tej kolumnie
    [~, row] = max(abs(A(i : n, i)));
    row = row + i - 1;
    
    %zamiana wierszy jesli jest to konieczne
    if(row ~= i)
        temp = A(row, :);
        A(row, :) = A(i, :);
        A(i, :) = temp;
        temp = b(row);
        b(row) = b(i);
        b(i) = temp;
    end

    %przeprowadzenie eliminacji na i-tej kolumnie
    temp = A((i + 1) : n, i) / A(i, i);
    A((i + 1) : n, :) = A((i + 1) : n, :) - A(i, :) .* temp;
    b((i + 1) : n) = b((i + 1 : n)) - b(i) * temp;
end

%przypisanie wektora zer do X
X = zeros(1, n);
%znalezienie pierwszego rozwiazania Xn
X(n) = b(n, 1) / A(n, n);

%znalezienie pozostalych rozwiazan
for i = n - 1 : -1 : 1
    temp = sum(A(i, (i + 1) : n) .* X((i + 1) : n));
    X(i) = (b(i) - temp) / A(i, i);
end

%transpozycja, bo X jest wektorem wierszowym
X = X';
end

