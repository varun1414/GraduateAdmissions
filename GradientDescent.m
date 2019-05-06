function theta=GradientDescent(alpha,iterations,x,y,theta)
m=size(x,1);

for i=1:iterations 
	J(i)=CostFunction(x,y,m,theta)
	JA=J(i);
	h=(x(:,1:8)*theta)-y;
	
	for j=1:8
		s=sum(h.*((x(:,j)).^j));
		theta(j,:)=theta(j,:)-alpha*((1/m)*s);
	end;

end;
	
		
	
	plot(J);
	%t=[-1:1];
	%plot(x*theta);
	
	