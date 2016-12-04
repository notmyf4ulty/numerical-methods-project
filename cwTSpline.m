function cwVec = cwTSpline(T)
    tNode = [0 285.7 571.4 857.1 1142.9 1428.6 1714.3 2000];
    cwNode = [0.2000 0.0375 0.0240 0.0200 0.0207 0.0225 0.0221 0.0160];
    
    a = tNode(1);
    h = tNode(2) - tNode(1);
    
    %cCoeffs = getCCoeffs(cwNode,a,h)
    cCoeffs = [27691459/523980000
                 19448833/523980000
                  -690791/523980000
                  2963581/523980000
                  1411987/523980000
                  1868071/523980000
                   392423/104796000
                  2073019/523980000
                  1325767/523980000
                  1007593/523980000];
    
    cwVec = ones(length(T),1);
    
    for i = 1:length(cwVec)
        cwVec(i) = calculateCw(cCoeffs,a,h,T(i));
    end
end
