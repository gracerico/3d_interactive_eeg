close all; clear all; clc;
% load('ts.mat');

% % KO DATA
% 3 month data
KO3mo400st = load('').STD;
KO3mo800st = load('').STD;
KO3mo1600st = load('').STD;

KO3mo400dev = load('').DEV;
KO3mo800dev = load('').DEV;
KO3mo1600dev = load('').DEV;

% 5 month data
KO5mo400st = load('').STD;
KO5mo800st = load('').STD;
KO5mo1600st = load('').STD;

KO5mo400dev = load('').DEV;
KO5mo800dev = load('').DEV;
KO5mo1600dev = load('').DEV;

% 7 month data
KO7mo400st = load('').STD;
KO7mo800st = load('').STD;
KO7mo1600st = load('').STD;

KO7mo400dev = load('').DEV;
KO7mo800dev = load('').DEV;
KO7mo1600dev = load('').DEV;

% 9 months data
KO9mo400st = load('').STD;
KO9mo800st = load('').STD;
KO9mo1600st = load('').STD;

KO9mo400dev = load('').DEV;
KO9mo800dev = load('').DEV;
KO9mo1600dev = load('').DEV;


% % WT DATA
% 3 month data
WT3mo400st = load('').STD;
WT3mo800st = load('').STD;
WT3mo1600st = load('').STD;

WT3mo400dev = load('').DEV;
WT3mo800dev = load('').DEV;
WT3mo1600dev = load('').DEV;

% 5 month data
WT5mo400st = load('').STD;
WT5mo800st = load('').STD;
WT5mo1600st = load('').STD;

WT5mo400dev = load('').DEV;
WT5mo800dev = load('').DEV;
WT5mo1600dev = load('').DEV;

% 7 month data
WT7mo400st = load('').STD;
WT7mo800st = load('').STD;
WT7mo1600st = load('').STD;

WT7mo400dev = load('').DEV;
WT7mo800dev = load('').DEV;
WT7mo1600dev = load('').DEV;

% 9 months data
WT9mo400st = load('').STD;
WT9mo800st = load('').STD;
WT9mo1600st = load('').STD;

WT9mo400dev = load('').DEV;
WT9mo800dev = load('').DEV;
WT9mo1600dev = load('').DEV;


% getting the MMN for each time age and ISI
KO3mo400mmn = KO3mo400dev(21, :) - KO3mo400st(21, :);
KO3mo800mmn = KO3mo800dev(21, :) - KO3mo800st(21, :);
KO3mo1600mmn = KO3mo1600dev(21, :) - KO3mo1600st(21, :);

KO5mo400mmn = KO5mo400dev(21, :) - KO5mo400st(21, :);
KO5mo800mmn = KO5mo800dev(21, :) - KO5mo800st(21, :);
KO5mo1600mmn = KO5mo1600dev(21, :) - KO5mo1600st(21, :);

KO7mo400mmn = KO7mo400dev(21, :) - KO7mo400st(21, :);
KO7mo800mmn = KO7mo800dev(21, :) - KO7mo800st(21, :);
KO7mo1600mmn = KO7mo1600dev(21, :) - KO7mo1600st(21, :);

KO9mo400mmn = KO9mo400dev(21, :) - KO9mo400st(21, :);
KO9mo800mmn = KO9mo800dev(21, :) - KO9mo800st(21, :);
KO9mo1600mmn = KO9mo1600dev(21, :) - KO9mo1600st(21, :);

WT3mo400mmn = WT3mo400dev(21, :) - WT3mo400st(21, :);
WT3mo800mmn = WT3mo800dev(21, :) - WT3mo800st(21, :);
WT3mo1600mmn = WT3mo1600dev(21, :) - WT3mo1600st(21, :);

WT5mo400mmn = WT5mo400dev(21, :) - WT5mo400st(21, :);
WT5mo800mmn = WT5mo800dev(21, :) - WT5mo800st(21, :);
WT5mo1600mmn = WT5mo1600dev(21, :) - WT5mo1600st(21, :);

WT7mo400mmn = WT7mo400dev(21, :) - WT7mo400st(21, :);
WT7mo800mmn = WT7mo800dev(21, :) - WT7mo800st(21, :);
WT7mo1600mmn = WT7mo1600dev(21, :) - WT7mo1600st(21, :);

WT9mo400mmn = WT9mo400dev(21, :) - WT9mo400st(21, :);
WT9mo800mmn = WT9mo800dev(21, :) - WT9mo800st(21, :);
WT9mo1600mmn = WT9mo1600dev(21, :) - WT9mo1600st(21, :);

all_data_KO = [KO3mo400mmn, KO3mo800mmn, KO3mo1600mmn, KO5mo400mmn, KO5mo800mmn, KO5mo1600mmn, KO7mo400mmn, KO7mo800mmn, KO7mo1600mmn, KO9mo400mmn, KO9mo800mmn, KO9mo1600mmn];
all_data_WT = [WT3mo400mmn, WT3mo800mmn, WT3mo1600mmn, WT5mo400mmn, WT5mo800mmn, WT5mo1600mmn, WT7mo400mmn, WT7mo800mmn, WT7mo1600mmn, WT9mo400mmn, WT9mo800mmn, WT9mo1600mmn];

figKO = figure;
hold on;

for i = 1:12
    %get the data from i in the list
    curr_sample = all_data_KO [i, :, :];
    %plot the data on the KO figure
    plot(ts,curr_sample,'b','LineWidth', 2);


end

figWT = figure;

%replicate for loop for WT