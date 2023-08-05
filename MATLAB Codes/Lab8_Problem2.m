%MATLAB code for TOWER OF HANOI game
clc 
clear 
close all 
syms t z y(t) Y 
yt1=y(t+1); 
yt2=y(t); 
F = input('Input the coefficients [a,b,c]: '); 
a=F(1); 
b=F(-2); 
nh = input( 'Enter the non-homogenous part f(t): ' ); 
eqn=y(t+1)-2*y(t)-nh; 
ZTY=ztrans(eqn); 
IC=input( 'Enter the initial conditions in the form [y0,y1]:' ); 
y1=IC(1);
y2=IC(2); 
ZTY=subs(ZTY,{ztrans(y(t),t,z),y(0),y(1) },{Y,y1,y2}); 
eq=collect(ZTY,Y); 
Y=simplify(solve(eq,Y)); 
yt=simplify(iztrans(Y)); 
disp( 'The solution of the difference equation yt=' ) 
disp(yt); 
m=0:20; 
y=subs(yt,t,m); 
stem(y) 
title('Difference equation'); 
xlabel('t'); 
ylabel('y(t)'); 