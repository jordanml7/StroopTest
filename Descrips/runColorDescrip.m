function runColorDescrip()
% function runColorDescrip()
% Inputs: None
% Outputs: None (creates image with instructions for Color test)

close all;

plot(0)
color = [rand() rand() rand()];
set(gca,'Color',color)
axis([0 100 0 100])
s = sprintf('You will be shown the name of a color.\nChoose the button that corresponds to\nthat name, NOT the text color of the\ngiven word, as fast as you can.');
text(50,70,s,'HorizontalAlignment','center','FontSize',20,'FontWeight','bold','Color',1-color);

s = sprintf('Click anywhere on this screen\nwhen you are ready to begin.');
text(50,30,s,'HorizontalAlignment','center','FontSize',15,'FontWeight','bold','Color',1-color);
ginput(1);

end