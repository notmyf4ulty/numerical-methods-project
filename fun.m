function dydt = fun(t,y)
    h = 50;
    A = 0.0109;
    mb = 0.4;
    mw = 2.5;
    cb = 0.22;
    f1 = (y(2) - y(1))/((mb*cb)/(A*h));
    f2 = (y(1) - y(2))/((mw*cwTSpline(y(2)))/(A*h));
    %f2 = (y(1) - y(2))/((mw*cwTApprox5(y(2)))/(A*h));
    dydt = [f1; f2];
end
    