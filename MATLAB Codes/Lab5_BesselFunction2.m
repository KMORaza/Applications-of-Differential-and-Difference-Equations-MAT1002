clc
clear all
X=(0.1 :0.1:10);
Y=zeros(length(X),5);
for i=0:4
Y(:,i+1)=bessely(i,X); 
end
plot(X,Y(:,1:5),'linewidth',1.5);
xlabel('X');
ylabel('Y_{n}(x)')
title('Bessel function of second kind');
legend('Y_{0}','Y_{1}','Y_{2}','Y_{3}','Y_{4}','locatio
n', 'best');
axis([0.1 10 -2 2])
