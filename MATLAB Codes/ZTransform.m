clc
clear all
syms z Y n positive
LHS=ztrans(sym('y(n+2)')-sym('y(n+1)')-sym('y(n)'),n,z);
RHS=ztrans(0,n,z);
newLHS=subs(LHS,{'ztrans(y(n),n,z)','y(0)','y(1)'},{Y,0,1});
Y=solve(newLHS-RHS,Y);
y=iztrans(Y,z,n);
