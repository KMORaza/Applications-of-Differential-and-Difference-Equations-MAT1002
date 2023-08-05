clc
clear all
X=(0:0.1:20);
J=zeros(length(X),5);
for i=0:4
J(:,i+1)=besselj(i,X);
end
figure (1)
plot(X, J(:,1:5), 'linewidth',1.5)
title('Bessel function of first kind');
xlabel('X');
ylabel('J_{n}(X)');
legend('J_{0}','J_{1}','J_{2}','J_{3}','J_{4}','location', 'best')
