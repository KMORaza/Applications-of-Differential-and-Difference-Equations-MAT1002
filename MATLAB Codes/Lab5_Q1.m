clc
clear all 
syms x
n=input('Enter the number of terms');
for i=3:n
 a(1)=1;
 a(2)=1;
 a(i)=-a(i-2)/(i)*(i-1);
end
y_s=poly2sym(fliplr(a),x);
y_ex=dsolve('D2y+y=0', 'y(0)=1', 'Dy(0)=1','x');
figure(1)
h1=ezplot(y_s);
hold on
h2=ezplot(y_ex);
hold off
set(h1, 'color', 'g', 'linestyle', '—')
legend('Series sol.’,’Exact sol.');