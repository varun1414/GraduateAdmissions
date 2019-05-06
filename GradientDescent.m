function theta=GradientDescent(alpha,iterations,x,y,theta)
m=size(x,1);
JA=1;i=1;
for i=1:iterations 
	J(i)=CostFunction(x,y,m,theta)
	%JA=J(i)
	
	
	h=(x(:,1:8)*theta)-y;
	
	for j=2:8
		
	
		
		
		
		s=sum(h.*(x(:,j)));
		theta(j,:)=theta(j,:)-alpha*((1/m)*s);
	
end ;
theta(1,:)=theta(1,:)-alpha*((1/m)*sum(h));
end;
	plot(J);
		
	
	
	%t=[-1:1];
	%plot(x*theta);
	
	