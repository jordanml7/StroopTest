function time = runButtonTest()
% function time = runButtonTest()
% Inputs: None
% Outputs: time (reaction time for this test)

rng('shuffle');

for k = 0:55:400
    for h = 0:115:500
        uicontrol('Style','pushbutton','FontSize',12,...
            'FontWeight','bold','Position',[h k 105 45],...
            'BackgroundColor','w');
    end
end

loc_k = 400*rand();
loc_k = round(loc_k/55) * 55;
loc_h = 500*rand();
loc_h = round(loc_h/115) * 115;
color = [rand() rand() rand()];

tic
    
t = round(rand()*10)+1;
pause(t);

uicontrol('Style','pushbutton','FontSize',12,'FontWeight','bold',...
    'Position',[loc_h loc_k 105 45],'Callback','uiresume(gcbf)',...
    'BackgroundColor',color);
realtime = toc;

uiwait(gcf);
responsetime = toc;
    
time = responsetime - realtime;

end