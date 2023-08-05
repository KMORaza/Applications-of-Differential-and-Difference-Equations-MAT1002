clc 
clear all
syms x s C D Y
y4=diff(sym('y(x)'),4);
y0=sym('y(x)');
L=input('Enter the length of the beam:');
E=input('Enter Modulus of elasticity:');
I=input('Enter Moment of inertia of the cross section:');
w=input('Enter distributive load w(x):');
eqn=E*I*y4-w;
LTY=laplace(eqn,x,s);
a=input('Enter y(0):');
b=input('Enter Dy(0):');
c =input('Enter D2y(L):');
d = input('Enter D3y(L):');
LTY=subs(LTY,{'laplace(y(x),x,s)','y(0)','D(y)(0)','D(D((y)))(0)','D(D(D((y))
))(0)'},{Y, a, b, C, D}); 
eq=collect(LTY,Y);
Y=simplify(solve(eq,Y));
y=simplify(ilaplace(Y,s,x));
eq1=subs(diff(y,x,2),x,L);
eq2=subs(diff(y,x,3),x,L);
[C, D]=solve(eq1, eq2);
gen=subs(y);
def=subs(def,heaviside(x-L),0);
fzplot(-def,[0,L])
title('Vertical deflection in cantilever beam')
xlabel('Length of the beam')
ylabel('Deflection')
