function runDescrip()
% function runDescrip()
% Inputs: None
% Outputs: None (creates image descriping the following reaction time
% tests)

plot(0)
color = [rand() rand() rand()];
set(gca,'Color',color)
axis([0 100 0 100])
s = sprintf('The following tests are designed\nto test your reaction time.');
text(50,50,s,'HorizontalAlignment','center','FontSize',25,'FontWeight','bold','Color',1-color);

pause(5);

end