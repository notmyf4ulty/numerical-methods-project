function [t, y] = myEuler(funct,tspan,h,x0)
    t = tspan(1):h:tspan(length(tspan));
    y = zeros(length(t),2);
    y(1,:) = x0;
    for i = 2:length(y(:,1))
        y(i,:) = y(i - 1,:) + h * funct(t(i - 1), y(i - 1,:))';
    end
end