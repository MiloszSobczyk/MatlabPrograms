function [value] = legendr(a, b, fun)
%funkcja legendr oblicza przyblizona wartosc calki funkcji na przedziale b, a
%za pomoca 2-punktowej kwadratury legendra
%b - prawy kraniec przedzialu, a - lewy kraniec przedzialu, fun - funkcja
%value - zwracana przyblizona wartosc calki
    x1 = ((-1 / sqrt(3)) * (b - a) + a + b) / 2;
    x2 = 1 / sqrt(3)) * (b - a) + a + b) / 2
    value = ((b - a) / 2) * (fun(x1) + fun(x2));
    
end

