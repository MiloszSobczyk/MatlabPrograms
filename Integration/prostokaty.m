function [value] = prostokaty(a, b, fun, N)
%funkcja prostokaty oblicza przyblizona wartosc calki funkcji na przedziale b, a
%za pomoca zlozonej kwadratury prostokatow
%b - prawy kraniec przedzialu, a - lewy kraniec przedzialu, N - liczba podzialow, fun - funkcja
%value - zwracana przyblizona wartosc calki
    X1 = linspace(a, b, N + 1);
    X2 = X1;
    X1(N + 1) = [];
    X2(1) = [];
    XS = (X1 + X2) / 2;
    value = (X2 - X1) .* fun(XS);
    value = value * ones(N, 1);
end

