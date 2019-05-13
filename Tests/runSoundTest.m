function time = runSoundTest()
% function time = runSoundTest()
% Inputs: None
% Outputs: time (reaction time for this test)

rng('shuffle');

s = sprintf('Click button immediately when you hear the tone');
Fs = 8000;
f = 440;
tsec = 1;

color = [rand() rand() rand()];
uicontrol('Style','pushbutton','String',s,'FontSize',12,...
    'FontWeight','bold','Position',[130 170 300 100],'Callback','uiresume(gcbf)',...
    'BackgroundColor',1-color,'ForegroundColor',color);

tic
    
t = round(rand()*10)+1;
pause(t);
realtime = toc;
soundsc(makeTone(f,Fs,tsec),Fs);

uiwait(gcf);
responsetime = toc;
    
time = responsetime - realtime;

end