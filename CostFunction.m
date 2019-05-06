function J=CostFunction(x,y,m,theta)

<<<<<<< HEAD
h=(x(:,1:8)*theta)-y;
=======
h=(x(:,1:7)*theta)-y;

>>>>>>> test2
%plot(h);
s=sum(h.^2);
J=(1/(2*m))*s;

