% X - wezly, Y - wartosci w wezlach, A - zbior argumentow, 
% F - zbior wartosci
function [F] = lagrange(X, Y, A)
    N = size(X, 2);
    M = size(A, 2);
    F = zeros(1, N);
    D = ones(N, 1) * X;
    D = D - X';
    D(D == 0) = 1;
    D = cumprod(D);
    D = D(N, :); %Dzielniki

    for i = 1 : M
        T = ones(N, N) * A(i);
        T = T - X';
        T = T - diag(diag(T)) + diag(ones(1, N));
        T = cumprod(T);
        T = T(N, :);
        T = T ./ D .* Y;
        T = cumsum(T');
        F(i) = T(N, 1);
    end
end

