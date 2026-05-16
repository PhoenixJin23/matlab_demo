random=randi([1,100]);
for i=1:5 %给定5次猜测机会
    guess=input('请猜测随机生成的数（1-100）：');

    if guess>random
        disp("High!");
    elseif guess<random
        disp("Low!");
    elseif guess==random
        disp("You win!");
        break;
    end

    if i==5 && guess~=random
        disp("Loser!!");
    end
end