function t=sushu(n)
k=floor(sqrt(n));
t=1;
for i=2:k
    if mod(n,i)==0
        t=0;
        break;
    else
        t=1;
    end
end
end


