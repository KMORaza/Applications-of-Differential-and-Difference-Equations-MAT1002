clc
clear all
syms x
L=input('the value of L');
f=input('Enter the function of x');
n=input('Enter the number of terms of series');
d=(1/(2*L))*int(f,x,-L,L);
For j=1:n
for k=1:1i
 a(k)=(1/L)*int(f*cos((k*pi*x)/L),x,-L,L);
 c(k,1)=cos((k*pi*x)/L);
 b(k)=(1/L)*int(f*sin((k*pi*x)/L),x,-L,L);
 s(k,1)=sin((k*pi*x)/L);
end
f_r(1i)=d+a*c+b*s;
h1=ezplot(f_r(j));
hold all
hold on
h2=ezplot(f);
hold off
set(h1,'color','g','linestyle','-')
legend('1st','2nd','3rd','4th','5th', 'f')
