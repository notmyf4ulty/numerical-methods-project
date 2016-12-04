function yy = myapprox(x,y,order,xx)
    coeffs = getPylomCoeffs(x,y,order);
    yy = zeros(length(xx),1);
    for i = 1:length(yy)
        for j = 1:length(coeffs)
            yy(i) = yy(i) + (coeffs(j) * (xx(i))^(j - 1));
        end
    end
end