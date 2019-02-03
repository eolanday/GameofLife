function [board]=randGen(size)
disp('randGenRUN');
board=zeros(size,size);
random=0;
for(i=1:size)
    for(a=1:size)
        random=floor(rand*100);
        if(mod(random,2)==0)
            board(i,a)=1;
        end
    end
end
end