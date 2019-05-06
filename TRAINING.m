clear; clc;
X=csvread("Admission_Predict.csv");

X=X(2:401,:);
y=X(:,9);


m1=mean(y);
s1=std(y);
y=(y-m1)./s1;
for k=1:7
	x(:,k)=X(:,k+1);
	end;
	x=[ones(400,1),x];
	
m=mean(x);
s=std(x);

for i=1:8
xm=m(i);
xs=s(i);

x(:,i)=(x(:,i)-xm)./xs;

 %fprintf("\n\nPlotting Features\n\n");
 %scatter([2:401],x(:,i),'+');
 

 hold on;
 

end;
%plot([2:401],y);


%Predicting Parameters
iterations=10;
alpha=0.3; theta=[0;0;0;0;0;0;0;0];
theta=GradientDescent(alpha,iterations,x,y,theta)
fprintf("\n\nTesting ");
l=testing(m,s,s1,m1,theta);



