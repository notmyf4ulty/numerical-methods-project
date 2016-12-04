function cw = calculateCw2(cCoeffs,a,h,T)
    cw = 0;
    for i = 1:length(cCoeffs)
        cw = cw + cCoeffs(i) * my3rdSpline(a,i-2,h,T);
    end
end
        