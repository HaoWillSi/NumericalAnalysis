% 数值积分
if integration_set1==1
    a=integration_ux1(1);b=integration_ux1(2);
    integration_if=(b-a)/2*(integration_f(a)+integration_f(b));
end
if integration_set2==1
    a=integration_ux1(1);b=integration_ux1(2);
    h=(b-a)/2;
    x1=a,x2=a+h,x3=b;
    integration_if=h/3*(integration_f(x1)+4*integration_f(x2)+integration_f(x3));
end
if integration_set3==1
    a=integration_ux1(1);b=integration_ux1(2);
[ai,x]=Cote_a(a,b,integration_order);
for(i=1:integration_order+1)
    fi(i)=integration_f(x(i));
end
fi=integration_f(x);
integration_if=sum(ai.*fi);%0.430964406081992
end

if integration_set4==1
   a=integration_ux1(1);b=integration_ux1(2);
   syms x t;x = ((a+b)+t*(b-a))/2;   
   int_f =eval(integration_f(x))
   integration_if = (b-a)/2*double((subs(int_f,t,-1/sqrt(3))+subs(int_f,t,1/sqrt(3))));%
end