clear; clc;
X=csvread("Admission_Predict.csv");
m=mean(X);
s=std(X);

y=X(:,9);
for i=2:8
xm=m(i);
xs=s(i);
x(i,:)=X(:,i)';
x(i,:)=(x(i,:)-xm)./xs;
plot(x(i,:),y,'+');
hold on;
pause;

end;

%Predicting Parameters
iterations=10;
alpha=0.00000001; theta=[1;1;1;1;1;1;1];
theta=GradientDescent(alpha,iterations,X,y,theta);
