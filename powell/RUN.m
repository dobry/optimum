% Example 10.3 (Powell’s method of minimization)
global X FUNC
% FUNC = @fex10_3;

FUNC = @(x) 100.0*(x(2) - x(1)^2)^2 + (1.0 -x(1))^2;

X = [-1.0; 1.0];
[xMin,fMin,numCycles] = powell