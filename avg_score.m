%计算成绩的加权平均值

wi = input('请输入每一科的学分--用空格分隔：\n','s');
gi = input('请输入每一科的成绩--用空格分隔：\n','s');
wi = str2num(wi);
gi = str2num(gi);
if numel(wi)<6 && numel(gi)<6
    disp('低于6组数据！');
end
credit = wi(1:6);
grade = gi(1:6);
average_score = sum(grade.*credit)/sum(credit);
fprintf('6科加权平均分为：%.2f',average_score);

