%插值法
%1 线性插值法
if czf_set1==1
czf_rY =  lineczf(czf_X,czf_Y,czf_rX);
end;
%1 拉格朗日插值法
if czf_set4==1
czf_rY =  lineczf(czf_X,czf_Y,czf_rX);
end;
%1 牛顿插值法
if czf_set2==1
czf_rY =  NewtonInterpolation(czf_X,czf_Y,czf_rX);
end;
%1 埃尔米特插值法
if czf_set3==1
czf_rY =  Hermite(czf_X,czf_Y,czf_ry1,czf_rX);
czf_rY = double(czf_rY);
end;