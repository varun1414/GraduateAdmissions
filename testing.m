function l=testing(m,s,s1,m1,theta)
fprintf("Features array : [318,106,3,2,3,8.65,1]\n\n");
a=[1,324,107,4,4,4.5,8.87,1];
a=[a(1),(a(:,2:8)-m(:,2:8))./s(:,2:8)];
l=a*theta;
result=l*s1+m1 %expected result 0.71

