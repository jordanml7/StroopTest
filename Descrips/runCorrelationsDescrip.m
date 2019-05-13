function runCorrelationsDescrip()
% function runCorrelationsDescrip()
% Inputs: None
% Outputs: None (creates image notifying the user that the tests are complete)

close all;

plot(0)
color = [rand() rand() rand()];
set(gca,'Color',color)
axis([0 100 0 100])
s = sprintf('Thank you for participating.\nClick anywhere to continue\nand view the collected data.');
text(50,50,s,'HorizontalAlignment','center','FontSize',25,'FontWeight','bold','Color',1-color);

ginput(1);

close all;

end