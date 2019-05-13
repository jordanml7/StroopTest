% % % % % % % % % % %
% Stroop Test       %
% By Jordan Lueck   %
% ES2 Final Project %
% 05/10/2017        %
% % % % % % % % % % %

addpath('Best Fits','Descrips','GUIs','Routines','Tests');

clear all;

load('TotalData.mat');

% run the tests and collect the data for that user
roundData = runStudy();
% add the round data to the file containing all user's data
TotalData(end+1) = roundData;

% create the output text file
writeFile(roundData,TotalData);

clear roundData FormData;

save('TotalData.mat','TotalData');

% run the DataCorrelations GUI
runCorrelationsDescrip();
DataCorrelations;
hGui = findobj('Tag','DataCorrelations');
waitfor(hGui);
