function theta=GradientDescent(alpha,x,iterations,y,theta)
m=size(x,1);

JA=1;i=1;
for i=1:iterations
	J(i)=CostFunction(x,y,m,theta);
	JA=J(i);
	
	
	h=(x(:,1:7)*theta)-y;
	
	for j=1:7
		s=sum(h.*(x(:,j)));

		theta(j,:)=theta(j,:)-alpha*((1/m)*s);
	i++;
end ;

end;
	%plot(J);
		JA
	


	%t=[-1:1];
	plot(x*theta);
	
	