function [ Results ] = getResults(trueMatrix, predictMatrix)
    rows = length(trueMatrix(:, 1));
    Results = zeros(1, 3);
    Results(1) = sum(trueMatrix == predictMatrix)/rows;
    Results(2) = sum(trueMatrix == predictMatrix);
    Results(3) = rows;

end