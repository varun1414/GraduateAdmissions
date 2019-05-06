function J=CostFunction(x,y,m,theta)


h=(x(:,1:7)*theta)-y;


%plot(h);
s=sum(h.^2);
J=(1/(2*m))*s;

