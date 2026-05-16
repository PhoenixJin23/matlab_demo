%检测sushu函数是否可用
a=input('请输入要判断的正整数:');
if sushu(a)==0
    fprintf("%d不是素数！",a);
else
    fprintf("%d是素数！",a);
end

