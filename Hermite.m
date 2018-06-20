function f = Hermite(x,y,y_1,x0)  
%����֪���ݵ�������ţ�ٲ�ֵ����ʽ  
%��֪���ݵ��x ��������:x  
%��֪���ݵ��y ��������:y  
%��֪���ݵ�ĵ�������:y_1  
%��õ�Hermite��ֵ����ʽ��x0���Ĳ�ֵ:f  
syms t;  
f = 0.0;  
n = length(x);   

for i=1:n  
    h = 1.0;  
    a = 0.0;  
      
    %%����hi��ai  
    for j=1:n  
        if( j ~= i)  
            h = h*(t-x(j))^2/((x(i)-x(j))^2);  
            a = a + 1/(x(i)-x(j));  
        end  
    end      %�������ʽ��  
    f = f + h*((x(i)-t)*(2*a*y(i)-y_1(i))+y(i));   
    if(i==n)  
        if(nargin == 4)  
            f = subs(f,'t',x0);  %�жϣ����û��x0�Ļ���ֻ���ʽ��
        else  
            f = vpa(f,6);  %�жϣ������x0�Ļ������������
            
        end  
    end  
end 