function time = runLetterTest()
% function time = runLetterTest()
% Inputs: None
% Outputs: time (reaction time for this test)

rng('shuffle');

leeway = 5;
select = [0 0];

color = [rand() rand() rand()];

plot(0)
set(gca,'Color',color)
grid off
axis([0 100 0 100])

letnum = rand();
if letnum < 0.2
    letter = 'F';
    findlet = 'E';
elseif letnum < 0.4
    letter = 'O';
    findlet = 'C';
elseif letnum < 0.6
    letter = 'M';
    findlet = 'N';
elseif letnum < 0.8
    letter = 'Q';
    findlet = 'O';
else
    letter = 'E';
    findlet = 'F';
end

loc = (90-10).*rand(1,2) + 10;
loc = round(loc/5) * 5;

s = sprintf('Select the letter %s as fast as you can!',findlet);
title(s,'FontSize',15,'Color',color);

for k = 10:5:90
    for h = 10:5:90
        if(k == loc(1) && h == loc(2))
            text(k,h,findlet,'FontSize',20,'FontWeight','bold','Color',1-color);
        else
            text(k,h,letter,'FontSize',20,'FontWeight','bold','Color',1-color);
        end
    end
end

tic

while (select(1) < loc(1)-leeway || select(1) > loc(1)+leeway || select(2) < loc(2)-leeway || select(2) > loc(2)+leeway)
    [select(1),select(2)] = ginput(1);
end
time = toc;

end