function times = runKeyboardTest()
% function times = runKeyboardTest()
% Inputs: None
% Outputs: times (reaction times for this test)

rng('shuffle');

letters = 'abcdefghijklmnopqrstuvwxyz';

plot(0);

pause(2);

for k = 1:10
    color = [rand() rand() rand()];
    num = round((26-1)*rand()+1);
    speclet = letters(num);
  
    plot(0)
    grid off
    set(gca,'Color',color)
    axis([0 100 0 100])

    tic

    text(50,50,speclet,'FontSize',200,'FontWeight','bold',...
        'Color',1-color,'HorizontalAlignment','center');

    currkey = 0;
    while currkey ~= 1
        pause;
        currkey = get(gcf,'CurrentKey'); 
        if strcmp(currkey, speclet)
            currkey = 1;
        else
            currkey = 0;
        end
    end

    times(k) = toc;
end

end