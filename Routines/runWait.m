function runWait()
% function runWait()
% Inputs: None
% Outputs: None (just runs a waitbar)

close all;

wait = waitbar(0,'The next test will begin soon...');
for k = 1:1000
    pause(0.001);
    waitbar(k/1000,wait);
end

close(wait);

end