function [J]=CostFunction(X,y,m,theta)
for i=1:7
h=(X(:,2:8)*theta)-y;
plot(h);
s=sum(h.^2);
J=(1/(2*m))*s;
J
