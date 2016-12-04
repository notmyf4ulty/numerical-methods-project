function cwVec = cwTSpline2(T)
    cwNode = [0 0.631 1.169 1.909];
    a = 0;
    h = 1/3;
    cCoeffs = getCCoeffs2(cwNode,a,h);
    
    cwVec = ones(length(T),1);
    
    for i = 1:length(cwVec)
        cwVec(i) = calculateCw(cCoeffs,a,h,T(i));
    end
end
