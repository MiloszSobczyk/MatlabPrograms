function [result] = relativeError(x, xApprox)
%RELATIVEERROR Summary of this function goes here
%   Autor: Milosz Sobczyk
%   Funckja oblicza wartosc bledu wzglednego pomiedzy wartosciami x i
%   xApprox
%   Argumenty wejsciowe: x-wartosc dokladna, xApprox-wartosc przyblizona
%   Argumenty wyjsciowe: result-wartosc bledu wzglednego


result = abs(x - xApprox) ./ (abs(x) + eps);

end

