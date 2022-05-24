function [result] = absoluteError(x, xApprox)
%ABSOLUTEERROR Summary of this function goes here
%   Autor: Milosz Sobczyk
%   Funckja oblicza wartosc bledu bezwzglednego pomiedzy wartosciami x i xApprox
%   Argumenty wejsciowe: x-wartosc dokladna, xApprox-wartosc przyblizona
%   Argumenty wyjsciowe: result-wartosc bledu bezwzglednego

result = abs(x - xApprox);
end

