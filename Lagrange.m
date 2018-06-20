% function y0=Lagrange(x,y,x0)
%给定一系列插值点(x,y)，得到在x=x0处，拉格朗日插值多项的值y0
% n=length(x);
% l=ones(1,n);  %基函数
% for k=1:n
%     for j=1:n
%         if j~=k
%             l(k)=l(k)*(x0-x(j))/(x(k)-x(j));  %定义插值基函数
%         end
%     end
% end
% y0=sum(y.*l);   %根据拉格朗日插值多项式，求x=x0对应的值y0
function yh=Lagrange(x,y,xh)
n=length(x);
m=length(xh);
yh=zeros(1,m);
c1=ones(n-1,1);
c2=ones(1,m);
for i=1:n
    xp=x([1:i-1 i+1:n]);
    yh=yh+y(i)*prod((c1*xh-xp'*c2)./(x(i)-xp'*c2));
end