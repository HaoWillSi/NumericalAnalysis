function y=NewtonInterpolation(X,Y,x)  
n=length(X);  
N=zeros(n,1);  
M=zeros(n,1);  
temp=1;    
y=0;  
for k=1:n  %算第k项（阶） 1；3
    M(k)=0;  
    for i=1:k %求差商 函数值的线性组合  1；1,2,3；
        N(i)=1;  
        for j=1:k  %求x的差 1；1,2,3；
            if j~=i  
                N(i)=N(i)*(X(i)-X(j));  %xi-xj的连乘；(x1-x2)*(x1-x3)
            end  
        end  
        M(k)=M(k)+Y(i)/N(i); %求得k阶差商  
        if i>1  
            temp=temp*(x-X(i-1)); %第一项就只是f(x0) 
        end  
     end  
    y=y+M(k)*temp;  %求得结果 叠加 
    temp=1;  %将临时变量重置  
end   