function runWelcome()
% function runWelcome()
% Inputs: None
% Outputs: None (just displays a welcome page)

for k = 1:20
    plot(0)
    color = [rand() rand() rand()];
    set(gca,'Color',color)
    axis([0 100 0 100])
    s = sprintf('Stroop Test');
    text(50,70,s,'HorizontalAlignment','center','FontSize',35,'Fontname','Timesnewroman','FontWeight','bold','Color',1-color);
    s = sprintf('By Jordan Lueck');
    text(50,60,s,'HorizontalAlignment','center','FontSize',20,'Fontname','Timesnewroman','FontWeight','bold','Color',1-color);
    s = sprintf('ES2 Final Project\nSpring 2017');
    text(50,25,s,'HorizontalAlignment','center','FontSize',15,'Fontname','Timesnewroman','FontWeight','bold','Color',1-color);
    pause(0.25);
end

end