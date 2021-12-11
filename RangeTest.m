clc; clear all; close all;

RSSI = table2array(importdata("RSSI.mat"));
timeMs = table2array(importdata("timeMs.mat"));

for i = 2:length(RSSI)
    if isnan(timeMs(i))
        timeMs(i) = 0;
    end
    if timeMs < 20000
        timeMs(i) = 0;      %% remove data before 20s
    end
end

badPackets = timeMs==0;
timeS = timeMs/1000;

plot(timeS, RSSI, 'r.');
hold on
plot(timeS,-120*badPackets, 'k.')
hold on
