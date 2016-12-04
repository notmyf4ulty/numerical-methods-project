function cw = cwTApprox5(T)
    tNode = [0 285.7 571.4 857.1 1142.9 1428.6 1714.3 2000];
    cwNode = [0.2000 0.0375 0.0240 0.0200 0.0207 0.0225 0.0221 0.0160];
    cw = myapprox(tNode,cwNode,5,T);
end