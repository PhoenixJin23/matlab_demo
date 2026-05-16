%MATLAB规则：必须长度一致、必须先赋值、必须用cell包装
name={'Xiaoming','Xiaohong','Xiaowang'}
age={20,19,[]} %若使用[20,19,[]],[]会被合并，只有2个元素
email={'xiaoming@163.com',[],[]}
%花括号创建的元胞数组cell的元素可以是不同类型的数据，
%并且不会合并数据，可以保证每个字段的长度一致

%大写开头的是结构体的字段名，小写的是变量名
Students=struct('Name',name,'Age',age,'Email',email)
allName={Students.Name} %访问时必须写字段名
Students(2).Age=19
Students(3).Age
allAge={Students.Age} %{}取cell里的内容，()取cell的容器
Students

for i = 1:5
    x = i^2
    disp(x);
    pause   % 每循环一次就暂停，按回车继续
end 


pause