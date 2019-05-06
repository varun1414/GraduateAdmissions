function theta=GradientDescent(alpha,x,y,theta)
m=size(x,1);

while JA>0.1 
	J(i)=CostFunction(x,y,m,theta);
	JA=J(i);
	h=(x(:,1:7)*theta)-y;
	for j=1:7
		s=sum(h.*(x(:,j)));
		theta(j,:)=theta(j,:)-alpha*((1/m)*s);
	end;

end;
	
		
	
	
	t=[-1:1];
	plot(x*theta);
	
	