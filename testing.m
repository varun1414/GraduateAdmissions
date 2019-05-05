function l=testing(m,s,s1,m1,theta)
fprintf("Features array : [318,106,3,2,3,8.65,1]\n\n");
a=[318,106^2,3^3,2^4,3^5,8.65^6,1];
a=(a-m)./s;
l=a*theta;
result=l*s1+m1 %expected result 0.71

