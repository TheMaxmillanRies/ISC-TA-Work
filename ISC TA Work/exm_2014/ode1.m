function [t,y] = ode1(F,tspan,y0)
% ODE1  World's simplest ODE solver.
%   ODE1(F,[t0,tfinal],y0) uses Euler's method to solve
%      dy/dt = F(t,y)
%   with y(t0) = y0 on the interval t0 <= t <= tfinal.

%   Copyright 2014 Cleve Moler
%   Copyright 2014 The MathWorks, Inc.
t0 = tspan(1);
tfinal = tspan(end);
h = (tfinal - t0)/200;
y = y0;
for t = t0:h:tfinal
   ydot = F(t,y);
   y = y + h*ydot;
end
