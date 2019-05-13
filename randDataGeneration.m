% this file is for testing purposes only - it randomly generates 100 data
% sets for use in correlation study testing

rng('shuffle');

for k = 1:100
    TotalData(k).names = ['Test #' num2str(k)];
    TotalData(k).ages = round((25-18)*rand()+18);
    TotalData(k).grades = round((16-10)*rand()+10);
    TotalData(k).tvhrs = round(10*rand());
    TotalData(k).sleephrs = round(10*rand());
    TotalData(k).internethrs = round(10*rand());
    TotalData(k).hwhrs = round(10*rand());
    TotalData(k).phonehrs = round(10*rand());
    TotalData(k).school = round(10*rand());
    TotalData(k).timings = 10.*rand(1,30);
end

save('randData.mat','TotalData');

clear k;