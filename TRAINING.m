clear; clc;
X=csvread("Admission_Predict.csv");
m=mean(X);
s=std(X);

y=X(:,9);
for i=1:8
xm=m(i);
xs=s(i);
x(i,:)=X(:,i)';
x(i,:)=(x(i,:)-xm)./xs;
plot(x(i,:),y,'+');
hold on;
end;
