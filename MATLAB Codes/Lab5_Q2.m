clc
clear all
syms x
 n=input('Enter the number of terms');
 for i=4:n
 a(1)=1;
 a(2)=1;
 a(3)=0;
 a(i)=-(a(i-3)/((i)*(i-1)));
 end
 y_s=poly2sym(fliplr(a),x);
