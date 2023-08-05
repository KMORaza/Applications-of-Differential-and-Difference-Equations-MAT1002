clc
clear all
close all
syms x1(t) x2(t)
A=Input('Enter the coefficient matrix A')
lambda=eig(A)
fprintf('eigen values of A are %f%f\n\n',lambda)
for i=1:length(lambda)
 temp=null(A-lambda(i)*eye(size(A)),'r');
 P(:,i)=temp./min(temp);l
end
disp('the model matrix is:\n')
disp(P)
D=inv(P)*A*P;
Sol1=dsolve(diff(x1,2)+D(1)*x1==0);
Sol2=dsolve(diff(x2,2)+D(4)*x2==0);
Y=P*[Sol1;Sol2]
