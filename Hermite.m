function f = Hermite(x,y,y_1,x0)  
%求已知数据点的向后差分牛顿插值多项式  
%已知数据点的x 坐标向量:x  
%已知数据点的y 坐标向量:y  
%已知数据点的导数向量:y_1  
%求得的Hermite插值多项式或x0处的插值:f  
syms t;  
f = 0.0;  
n = length(x);   

for i=1:n  
    h = 1.0;  
    a = 0.0;  
      
    %%计算hi和ai  
    for j=1:n  
        if( j ~= i)  
            h = h*(t-x(j))^2/((x(i)-x(j))^2);  
            a = a + 1/(x(i)-x(j));  
        end  
    end      %求出迭代式子  
    f = f + h*((x(i)-t)*(2*a*y(i)-y_1(i))+y(i));   
    if(i==n)  
        if(nargin == 4)  
            f = subs(f,'t',x0);  %判断，如果没有x0的话就只输出式子
        else  
            f = vpa(f,6);  %判断，如果有x0的话就输出计算结果
            
        end  
    end  
end 