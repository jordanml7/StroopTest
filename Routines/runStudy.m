function Data = runStudy()
% function Data = runStudy()
% Inputs: None
% Outputs: Round data, including reaction times and form-collected data

load BackgroundMusic.mat;
sound(y,fs);

UserDataForm;
hGui = findobj('Tag','UserDataForm');
waitfor(hGui);

numstudies = 4;

figure('Name','Stroop Test, By Jordan Lueck','NumberTitle','off')
runWelcome();

runDescrip();

runLetterDescrip();

numtimes = 1;

for k = numtimes:numtimes+numstudies
    runWait();
    times(k) = runLetterTest();
end

runButtonDescrip();
runWait();

numtimes = length(times)+1;

for k = numtimes:numtimes+numstudies
    times(k) = runButtonTest();
end

runColorDescrip();
runWait();

numtimes = length(times)+1;

for k = numtimes:numtimes+numstudies
    times(k) = runColorTest();
end

runKeyboardDescrip();
runWait();

keytimes = runKeyboardTest();
for k = 1:length(keytimes)
    times(end+1) = keytimes(k);
end

runSoundDescrip();
clear sound;
runWait();

numtimes = length(times)+1;

for k = numtimes:numtimes+numstudies
    times(k) = runSoundTest();
end

Data = evalin('base','FormData');
Data.timings = times;

end