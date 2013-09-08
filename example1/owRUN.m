clear all;
close all;
clc

%% zaladowanie parametrow wejsciowych z pliku
global GLOBAL_C
global GLOBAL_Ceq

%ustawienie parametrow domyslnych
x0  = [0;0];
A   = [];
b   = [];
Aeq = [];
beq = [];
lb  = [];
ub  = [];
C   = @(x) [];
Ceq = @(x) [];
options=optimset('Algorithm','active-set');

%procedura ladowania z pliku *.m
inputData1; 

GLOBAL_C = C;
GLOBAL_Ceq = Ceq;

X=fmincon(fx,x0,A,b,Aeq,beq,lb,ub, @conditions, options)

%% tymczasowa prezentacja znalezionego rozwiazania
[x1,x2] = meshgrid([-2.5:0.1:2.5],[-2.5:0.1:2.5]);
f = x1.^3+x1.^2+x1.*x2+x2.^2;

x0 = 1;
y0 = -1;
r = 1;
alfa = 0:pi/360:2*pi;
xx = x0+r*cos(alfa);
yy = y0+r*sin(alfa);

figure;
hold on;
contour(x1,x2,f,20);
plot(xx, yy,'k');
plot(X(1),X(2),'ro');
legend('funkcjona³ jakosci','ograniczenie','rozwiazanie');
grid;
title('Wykres funkcjona³u jakosci');
xlabel('x1');
ylabel('x2');

