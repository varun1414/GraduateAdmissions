function l=testing(m,s,s1,m1,theta)
fprintf("Features array : [318,106,3,2,3,8.65,1]\n\n");
a=[1,337,118,4,4.5,4.5,9.65,1];
a=(a-m)./s;
l=a*theta;
result=l*s1+m1 %expected result 0.71

