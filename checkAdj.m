
function [newGrid]=checkAdj(grid)
disp('checkAdjRUN');
    [x,y]=size(grid);
    newGrid=(zeros(size(grid)));
    liveNeighbors=0;
    %First two nested loop are for individual squares
    %Next to are to select adjacent
    for(i=1:x)
        for(a=1:y)
            for(xAdj=-1:1)
                for(yAdj=-1:1)
                    if(not( ((i+xAdj)<1) || ((i+xAdj)>x) || ((a+yAdj)<1) || ((a+yAdj)>y ) ))
                        if(xAdj~=0||yAdj~=0)
                            if (grid(i+xAdj,a+yAdj)==1)
                                liveNeighbors=liveNeighbors+1;
                            end
                        end
                    end
                end
            end
            if(grid(i,a)==1)
                if(liveNeighbors<2)
                    newGrid(i,a)=0;
                elseif(liveNeighbors>3)
                    newGrid(i,a)=0;  
                else
                    newGrid(i,a)=1;
                end
            elseif(grid(i,a)==0 && liveNeighbors==3)
                newGrid(i,a)=1;
            end
            liveNeighbors=0;
        end
    end
end
function [newGrid]=bottom(grid)
[x,y]=size(grid);
bot=zeros(1,y);
for(i=2:y-1)
    
end

end