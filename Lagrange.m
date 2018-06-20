% function y0=Lagrange(x,y,x0)
%����һϵ�в�ֵ��(x,y)���õ���x=x0�����������ղ�ֵ�����ֵy0
% n=length(x);
% l=ones(1,n);  %������
% for k=1:n
%     for j=1:n
%         if j~=k
%             l(k)=l(k)*(x0-x(j))/(x(k)-x(j));  %�����ֵ������
%         end
%     end
% end
% y0=sum(y.*l);   %�����������ղ�ֵ����ʽ����x=x0��Ӧ��ֵy0
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