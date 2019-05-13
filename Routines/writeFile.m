function writeFile(round,total)
% function writeFile()
% Inputs: round data and total data
% Outputs: None (creates a text file with various information about the
% user's performance)

myfile = fopen('UserReport.txt','wt');

[~,m] = size(total);

fprintf(myfile,'|---------------------------|\n');
fprintf(myfile,'|  Your Stroop Test Report  |\n');
fprintf(myfile,'|---------------------------|\n');
fprintf(myfile,'Compiled for %s, Test Subject #%d\n\n',round.names,m);

numstudies = 4;

numtimes = 1;
usrLetterTimes = round.timings(numtimes:numtimes+numstudies);

numtimes = numtimes+length(usrLetterTimes);
usrButtonTimes = round.timings(numtimes:numtimes+numstudies);

numtimes = numtimes+length(usrButtonTimes);
usrColorTimes = round.timings(numtimes:numtimes+numstudies);

numtimes = numtimes+length(usrColorTimes);
usrKeyboardTimes = round.timings(numtimes:numtimes+9);

numtimes = numtimes+length(usrKeyboardTimes);
usrSoundTimes = round.timings(numtimes:numtimes+numstudies);

means = [mean(usrLetterTimes) mean(usrButtonTimes) mean(usrColorTimes) mean(usrKeyboardTimes) mean(usrSoundTimes)];

fprintf(myfile,'For the Letter Locating Tests, you averaged %g seconds to find the unique letter.\n',means(1));
fprintf(myfile,'For the Button Tests, you averaged %g seconds to click on the colored button.\n',means(2));
fprintf(myfile,'For the Color Determining Tests, you averaged %g seconds to select the correct color.\n',means(3));
fprintf(myfile,'For the Keyboard Entering Tests, you averaged %g seconds to press the correct key.\n',means(4));
fprintf(myfile,'For the Tone Tests, you averaged %g seconds to click the button after the tone.\n\n',means(5));

usravg = mean(means);
fprintf(myfile,'In total, your reaction time is approximately %g seconds.\n',usravg);
for k = 1:m
    totalavg(k) = mean(total(k).timings);
end
totalavg = mean(totalavg);

fprintf(myfile,'The average reaction time of everyone who has taken this test is approximately %g seconds.\n',totalavg);

if usravg < totalavg
    fprintf(myfile,'Thus you were about %g seconds faster than average, nice work!',totalavg-usravg);
else
    fprintf(myfile,'Thus you were about %g seconds slower than average. Can you do better?',usravg-totalavg);
end

end