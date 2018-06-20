function [ai,x]=Cote_a(a,b,n)
h=(b-a)/n;
x=a+(0:n).*h;%1+(0:3).*1
ai = zeros(1,n);
syms t;
for i=1:n+1
    li=1;
    for j=1:n+1
        if( j ~= i)
        li=li*(t-x(j))/(x(i)-x(j));
        end
    end
    ai(i)=int(li,[a,b]);      
end

    