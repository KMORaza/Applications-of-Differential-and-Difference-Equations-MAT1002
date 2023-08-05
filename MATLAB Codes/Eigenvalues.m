%Code for calculating eigenvalues of matrix
clc
clear all
A=[3 0 -1; 0 1 0; 2 0 0]; 
Eigenvalues of A=eig(A);
[X,D]= eig(A);
p=poly(A); % Coefficients of the characteristic polynomial
r = roots(p); % To find the roots of the characteristic
sum of eigenvalues = sum(r);
Trace of A=trace(A); %Note that sum of eigenvalues is Trace 
of A
Product of eigenvalues of A = prod(r);
Determinant of A = det(A);
Inverse of A = inv(A);
Eigenvalues of invA= eig(inv(A));
Eigenvalues of Transpose of A= eig(A');
% Note that eigenvalues of A and Transpose of A are same
Eigenvalues of B= eig(A^2+3*A+2*eye(3));
% Understand the property it is satisfying