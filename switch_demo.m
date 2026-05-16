%建立一个菜单
f = menu('ch','1','2','3','4');
a = [];
%情况选择
switch f   
case 1
a = 10-rand(2)*20  
case 2
a = 5-rand(2)*10   
case 3 
a = 1-rand(2)*2
case 4 
a = randn(2)
otherwise 
disp('error!')
end
