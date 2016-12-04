function cVec = getCCoeffs2(cwNode,a,h)
    
    alpha = 2;
    beta = 3.168;
    
    syms c0 c1 c2 c3
    eqn1 = 4*c0 + 2*c1 == cwNode(1) + (h/3) * alpha;
    eqn2 = c0 + 4*c1 + c2 == cwNode(2);
    eqn3 = c1 + 4*c2 + c3 == cwNode(3);
    eqn4 = 2*c2 + 4*c3 == cwNode(4) - (h/3) * beta;
    eqnVec = [eqn1, eqn2, eqn3, eqn4];
    cVec = [c0, c1, c2, c3];
    cValues = solve(eqnVec,cVec);
    
    cMin1 = cValues.c1 - (h / 3) * alpha;
    c4 = cValues.c2 + (h / 3) * beta;
    
    cVec = [cMin1 
        cValues.c0 
        cValues.c1 
        cValues.c2 
        cValues.c3 
        c4];
    vpa(cVec)
end