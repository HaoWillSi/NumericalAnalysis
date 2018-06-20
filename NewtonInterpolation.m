function y=NewtonInterpolation(X,Y,x)  
n=length(X);  
N=zeros(n,1);  
M=zeros(n,1);  
temp=1;    
y=0;  
for k=1:n  %���k��ף� 1��3
    M(k)=0;  
    for i=1:k %����� ����ֵ���������  1��1,2,3��
        N(i)=1;  
        for j=1:k  %��x�Ĳ� 1��1,2,3��
            if j~=i  
                N(i)=N(i)*(X(i)-X(j));  %xi-xj�����ˣ�(x1-x2)*(x1-x3)
            end  
        end  
        M(k)=M(k)+Y(i)/N(i); %���k�ײ���  
        if i>1  
            temp=temp*(x-X(i-1)); %��һ���ֻ��f(x0) 
        end  
     end  
    y=y+M(k)*temp;  %��ý�� ���� 
    temp=1;  %����ʱ��������  
end   