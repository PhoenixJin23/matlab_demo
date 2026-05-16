clc
clear
%统计1-2026里0的个数
total0=0;
for i=1:2026
    temp=num2str(i);
    total0=total0+length(strfind(temp,'0'));
end
fprintf('1-2026里有%d个0',total0);
