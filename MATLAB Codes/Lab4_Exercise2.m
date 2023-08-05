clc 
clear all
close all
eqn=input('Enter the equation: '); 
inits=input('Enter the conditions: '); 
y=dsolve(eqn,inits, 't'); 
soln=['y(t)=', char(simplify(y))]; 
disp(soln) 
ezplot(y)