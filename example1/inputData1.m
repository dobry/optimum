%% plik z danymi wej�ciowymi
% parametry opcjonalne mog� nie wyst�pi� w nim w o og�le

fx  = @(x) x(1).^3 + x(1).^2 + x(1).*x(2) + x(2).^2;
fxm  = @(x) x(1,:).^3 + x(1,:).^2 + x(1,:).*x(2,:) + x(2,:).^2;
x0  = [0;0];
%A   = [];
%b   = [];
%Aeq = [];
%beq = [];
%lb  = [];
%ub  = [];
C   = @(x) (x(1)-1)^2+(x(2)+1)^2-1;
%Ceq = @(x) [];