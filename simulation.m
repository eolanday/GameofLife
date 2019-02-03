%DEFUNCT


function []=simulation(gridX)
disp('simRUN');
%pauseV=1;
figure('Name','Game of Life','NumberTitle','off');
stop=1;
while(stop)
    global pauseV;
    %pauseV=get(menuRun,'pauseVal');
    pauseV1=pauseV;
    if(pauseV1)
        gridDraw(gridX);
        gridX=checkAdj(gridX);
        pause(1/10);
        %clf
    end
end
end