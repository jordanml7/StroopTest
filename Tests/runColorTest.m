function time = runColorTest()
% function time = runColorTest()
% Inputs: None
% Outputs: time (reaction time for this test)

rng('shuffle');

colors = {'red' 'blue' 'green' 'magenta' 'yellow' 'cyan'};
randnums = randperm(6);

speccol = colors{randnums(1)};
wordcol = colors{randnums(2)};

randnums = randperm(6);

plot(0)
grid off
axis([0 100 0 100])

text(50,90,speccol,'FontSize',30,'FontWeight','bold',...
    'Color',wordcol,'HorizontalAlignment','center');

cnt = 1;

for k = 120:190:310
    for h = 80:80:240
        thiscol = colors{randnums(cnt)};
        if strcmp(speccol,thiscol) == 0
            uicontrol('Style','pushbutton','FontSize',12,...
                'FontWeight','bold','Position',[k h 150 75],...
                'BackgroundColor',thiscol);
        else
            loc_k = k;
            loc_h = h;
        end
        cnt = cnt + 1;
    end
end

tic

uicontrol('Style','pushbutton','FontSize',12,...
            'FontWeight','bold','Position',[loc_k loc_h 150 75],...
            'Callback','uiresume(gcbf)','BackgroundColor',speccol);
        
uiwait(gcf);
time = toc;

end