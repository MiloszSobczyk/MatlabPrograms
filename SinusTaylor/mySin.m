function [result] = mySin(x, N)
%MYSIN Summary of this function goes here
%   Autor: Milosz Sobczyk
%   Funkcja zwraca przybliżoną wartość funkcji sinus obliczoną za pomocą
%   szeregu Taylora
%   Argumenty wejściowe: x-punkt, N-współczynnik dzięki czemu określony
%   będzie stopień wielomianu

if nargin < 2
    N = 5;
end
result = x' * ones(1, 2*N+1);
result(:, 2:2:2*N+1) = 0;
result(:, 1:2:2*N+1) = result(:, 1:2:2*N+1) .^ (1:2:2*N+1);
result = result ./ cumprod(1 : 2*N+1);
result(:, 3:4:2*N+1) = result(:, 3:4:2*N+1) * (-1);
result = result * ones(2*N+1, 1);
result = result';
end

