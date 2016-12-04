function coeffs = getPylomCoeffs(x,y,order)
    nDimension = order + 1;
    M = ones(nDimension);
    Y = y(1:nDimension)';
    for i = 1:nDimension
        for j = 1:nDimension
            M(i,j) = x(i)^(j - 1);
        end
    end
    coeffs = (M' * M) \ (M' * Y);
end