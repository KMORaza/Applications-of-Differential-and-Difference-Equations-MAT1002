clc
clear all
X=linspace(-1,1,500);
X=X(:);
N=6;
Y=zeros(numel(X),N);
Y(:,1)=1;
Y(:,2)=X;
for n=1:(N-1)
c(n)=(2*n+1)/(n+1);
d(n)=n/(n+1);
Y(:,n+2)=c(n)*(X.*Y(:,n+1))-d(n)*Y(:,n);
end
figure(1)
plot(X,Y(:,1:6), 'linewidth',1.5)
legend('P_{0}','P_{1}','P_{2}','P_{3}','P_{4}','P_{5}',
'location', 'best')
clc
clear all
syms x y
fplot(legendreP(1:4, x))
axis([-1.5 1.5 -1 1])
grid on
ylabel('P_n(x)')
title('Legendre polynomials of degrees 1 through 4')
legend('1','2','3','4','5','6','Location','best')
