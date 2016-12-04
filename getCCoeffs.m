function cVec = getCCoeffs(cwNode,a,h)
    
    alpha = (cwNode(2) - cwNode(1))/285.7;
    beta = (cwNode(8) - cwNode(7))/285.7;
    
    syms c0 c1 c2 c3 c4 c5 c6 c7
    eqn1 = 4*c0 + 2*c1 == cwNode(1) + (h/3) * alpha;
    eqn2 = c0 + 4*c1 + c2 == cwNode(2);
    eqn3 = c1 + 4*c2 + c3 == cwNode(3);
    eqn4 = c2 + 4*c3 + c4 == cwNode(4);
    eqn5 = c3 + 4*c4 + c5 == cwNode(5);
    eqn6 = c4 + 4*c5 + c6 == cwNode(6);
    eqn7 = c5 + 4*c6 + c7 == cwNode(7);
    eqn8 = 2*c6 + 4*c7 == cwNode(8) - (h/3) * beta;
    eqnVec = [eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8];
    cVec = [c0, c1, c2, c3, c4, c5, c6, c7];
    cValues = solve(eqnVec,cVec);
    
    cMin1 = cValues.c1 - (h / 3) * alpha;
    c8 = cValues.c6 + (h / 3) * beta;
    
    cVec = [cMin1 
        cValues.c0 
        cValues.c1 
        cValues.c2 
        cValues.c3 
        cValues.c4 
        cValues.c5 
        cValues.c6 
        cValues.c7 
        c8];
end