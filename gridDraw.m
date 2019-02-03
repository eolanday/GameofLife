function []=gridDraw(grid1)
%figure

%Draw Buttons

%\Draw Buttons

%Start Code
global gridSize;
colormap gray;
hold on
disp('gridDrawRUN');
pixelSize=100/gridSize;
%x=[-pixelSize,-pixelSize,0,0];
%y=[100,100+pixelSize,100+pixelSize,100];
%xD=x;
%yD=y;
%xGrid=randGen(10)
for(i=1:gridSize)
    for(a=1:gridSize)
        %Building Grid x-simple then y-simple
        %xD=x+[(a*pixelSize),(a*pixelSize),(a*pixelSize),(a*pixelSize)];
        %yD=y+[i*(-pixelSize),i*(-pixelSize),i*(-pixelSize),i*(-pixelSize)];
        if(grid1(i,a)==1)
            %fill(xD,yD,'White');
        else
            %fill(xD,yD,'Black');
        end
    end
end
imagesc([(0+pixelSize/2) (100-pixelSize/2)],[(0+pixelSize/2) (100-pixelSize/2)],grid1);
hold off
end
