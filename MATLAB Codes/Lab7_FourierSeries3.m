clc
clear all
syms x
L=input('the value of L');
f=input('Enter the function of x');
n=input('Enter the number of terms of series');
d=(1/(2*L))*int(f,x,-L,L);
for j=1:n
for k=1:j
 a(k)=(1/L)*int(f*cos((k*pi*x)/L),x,-L,L);
 c(k,1)=cos((k*pi*x)/L);
 b(k)=(1/L)*int(f*sin((k*pi*x)/L),x,-L,L);
 s(k,1)=sin((k*pi*x)/L);
end
f_r(j)=d+a*c+b*s;
h1=ezplot(f_r(j));
hold all
end
hold on
h2=ezplot(f,[-L L]);
hold off
