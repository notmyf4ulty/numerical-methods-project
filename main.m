%tNode = 1:50:2000;
%y = cwTSpline(tNode);

y0 = [1200 65];

%[t,y] = ode23(@fun,[0 1],y0);
%[t,y] = myEuler(@fun,[0 1],0.05,y0);
[t,y] = myModifiedEuler(@fun,[0 1],0.05,y0);

plot(t,y,'-o')