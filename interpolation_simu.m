%��ֵ��
%1 ���Բ�ֵ��
if czf_set1==1
czf_rY =  lineczf(czf_X,czf_Y,czf_rX);
end;
%1 �������ղ�ֵ��
if czf_set4==1
czf_rY =  lineczf(czf_X,czf_Y,czf_rX);
end;
%1 ţ�ٲ�ֵ��
if czf_set2==1
czf_rY =  NewtonInterpolation(czf_X,czf_Y,czf_rX);
end;
%1 �������ز�ֵ��
if czf_set3==1
czf_rY =  Hermite(czf_X,czf_Y,czf_ry1,czf_rX);
czf_rY = double(czf_rY);
end;