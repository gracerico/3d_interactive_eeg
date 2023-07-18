close all; clear all; clc;
% load('ts.mat');

% % KO DATA
% 3 month data
KO3mo400st = [];
KO3mo800st = [];
KO3mo1600st = [];

KO3mo400dev = [];
KO3mo800dev = [];
KO3mo1600dev = [];

% 5 month data
KO5mo400st = [];
KO5mo800st = [];
KO5mo1600st = [];

KO5mo400dev = [];
KO5mo800dev = [];
KO5mo1600dev = [];

% 7 month data
KO7mo400st = [];
KO7mo800st = [];
KO7mo1600st = [];

KO7mo400dev = [];
KO7mo800dev = [];
KO7mo1600dev = [];

% 9 months data
KO9mo400st = [];
KO9mo800st = [];
KO9mo1600st = [];

KO9mo400dev = [];
KO9mo800dev = [];
KO9mo1600dev = [];


% % WT DATA
% 3 month data
WT3mo400st = [];
WT3mo800st = [];
WT3mo1600st = [];

WT3mo400dev = [];
WT3mo800dev = [];
WT3mo1600dev = [];

% 5 month data
WT5mo400st = [];
WT5mo800st = [];
WT5mo1600st = [];

WT5mo400dev = [];
WT5mo800dev = [];
WT5mo1600dev = [];

% 7 month data
WT7mo400st = [];
WT7mo800st = [];
WT7mo1600st = [];

WT7mo400dev = [];
WT7mo800dev = [];
WT7mo1600dev = [];

% 9 months data
WT9mo400st = [];
WT9mo800st = [];
WT9mo1600st = [];

WT9mo400dev = [];
WT9mo800dev = [];
WT9mo1600dev = [];

% list of file paths to sort through later
filepaths = ["/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13902R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928L2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928L2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928L2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928L2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928L2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928L2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13928R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13951R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13951R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13951R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13951R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13951R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13951R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13765R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13765R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13765R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13765R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13765R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13765R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13878R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13878R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13878R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13878R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13878R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13878R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13900R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13900R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13900R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13900R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13900R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13900R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13902R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13902R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13902R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13902R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/CLN3/13902R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928R4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928R4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928R4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928R4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928R4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928R4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13951L1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13951L1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13951L1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13951L1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13951L1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13951L1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13955R2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13955R2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13955R2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13955R2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13955R2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13955R2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13772L3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13772L3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13772L3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13772L3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13772L3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13772L3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13900R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13900R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13900R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13900R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13900R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13900R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13902R2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13902R2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13902R2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13902R2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13902R2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13902R2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13904R4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13920R1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13920R1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13920R1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13920R1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13920R1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13920R1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/3 Mon/WT/13928L4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13951L1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13951L1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13951L1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13951L1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13951L1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13955R2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13955R2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13955R2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13955R2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13955R2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13955R2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13772R4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13772R4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13772R4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13772R4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13772R4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13772R4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13827R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13827R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13827R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13827R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13827R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13827R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13855L2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13855L2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13855L2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13855L2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13855L2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13855L2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13873R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13873R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13873R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13873R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13873R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13873R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13900R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13900R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13900R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13900R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13900R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13900R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13902R2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13902R2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13902R2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13902R2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13902R2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13902R2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13904R4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13920R1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13920R1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13920R1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13920R1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13920R1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13920R1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928L4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928R4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928R4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928R4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928R4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928R4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13928R4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/WT/13951L1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13763R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13951R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13928L2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13902R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13900R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13878R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829R3CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/5 Mon/CLN3/13829L2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13951R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13951R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13951R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13951R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13951R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13951R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13765R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13765R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13765R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13765R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13765R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13765R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829L2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829L2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829L2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829L2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829L2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829L2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829R3CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829R3CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829R3CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829R3CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829R3CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13829R3CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13878R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13878R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13878R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13878R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13878R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13878R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13900R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13900R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13900R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13900R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13900R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13900R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13902R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13902R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13902R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13902R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13902R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13902R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928L2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928L2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928L2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928L2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928L2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928L2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/CLN3/13928R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13951L1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13951L1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13951L1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13951L1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13951L1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13955R2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13955R2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13955R2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13955R2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13955R2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13955R2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13827R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13827R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13827R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13827R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13827R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13827R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13855L2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13855L2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13855L2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13855L2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13855L2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13855L2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13873R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13873R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13873R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13873R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13873R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13873R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13900R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13900R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13900R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13900R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13900R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13900R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13902R2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13902R2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13902R2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13902R2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13902R2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13902R2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13904R4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928L4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928R4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928R4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928R4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928R4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928R4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13928R4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/7 Mon/WT/13951L1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928L2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928L2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13951R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13951R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13951R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13951R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13951R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13951R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13763R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13763R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13763R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13763R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13763R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13763R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829L2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829L2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829L2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829L2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829L2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829L2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829R3CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829R3CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829R3CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829R3CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829R3CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13829R3CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13900R2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13900R2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13900R2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13900R2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13900R2CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13900R2CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13902R1CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13902R1CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13902R1CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13902R1CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13902R1CLN31600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13902R1CLN31600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928L2CLN3400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928L2CLN3400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928L2CLN3800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/CLN3/13928L2CLN3800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13955R2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13955R2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13955R2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13955R2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772L3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772L3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772L3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772L3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772L3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772L3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772R4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772R4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772R4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772R4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772R4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13772R4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13827R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13827R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13827R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13827R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13827R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13827R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13855L2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13855L2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13855L2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13855L2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13855L2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13855L2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13873R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13873R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13873R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13873R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13873R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13873R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13900R3WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13900R3WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13900R3WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13900R3WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13900R3WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13900R3WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13902R2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13902R2WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13902R2WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13902R2WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13902R2WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13902R2WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928L4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928R4WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928R4WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928R4WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928R4WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928R4WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13928R4WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13951L1WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13951L1WT400ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13951L1WT800ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13951L1WT800ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13951L1WT1600ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13951L1WT1600ms_STD.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13955R2WT400ms_DEV.mat"
"/Users/gracerico/Library/CloudStorage/Box-Box/Male MMN Data/9 Mon/WT/13955R2WT400ms_STD.mat"];

for files = 1:length(filepaths)
    filename = filepaths{files};
    if contains(filename, "3 Mon")
           if contains(filename, "CLN3")
               if contains(filename, "STD")
                   if contains(filename, "400ms")
                       KO3mo400st = cat(1, KO3mo400st, load(filename).meanAllST(21, :));
                   elseif contains(filename, "800ms")
                       KO3mo800st = cat(1, KO3mo800st, load(filename).meanAllST(21, :));
                   else contains(filename, "1600ms")
                       KO3mo1600st = cat(1, KO3mo1600st, load(filename).meanAllST(21, :));
                   end
                else 
                   if contains(filename, "400ms")
                       KO3mo400dev = cat(1, KO3mo400dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "800ms")
                       KO3mo800dev = cat(1, KO3mo800dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "1600ms")
                       KO3mo1600dev = cat(1, KO3mo1600dev, load(filename).meanAllDEV(21, :));
                   end

               end
                
           else 
               if contains(filename, "STD")
                   if contains(filename, "400ms")
                       WT3mo400st = cat(1, WT3mo400st, load(filename).meanAllST(21, :));
                   elseif contains(filename, "800ms")
                       WT3mo800st = cat(1, WT3mo800st, load(filename).meanAllST(21, :));
                   else contains(filename, "1600ms")
                       WT3mo1600st = cat(1, WT3mo1600st, load(filename).meanAllST(21, :));
                   end
                else 
                   if contains(filename, "400ms")
                       WT3mo400dev = cat(1, WT3mo400dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "800ms")
                       WT3mo800dev = cat(1, WT3mo800dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "1600ms")
                       WT3mo1600dev = cat(1, WT3mo1600dev, load(filename).meanAllDEV(21, :));
                   end

               end

           end
    elseif contains(filename, "5 Mon")
        if contains(filename, "CLN3")
               if contains(filename, "STD")
                   if contains(filename, "400ms")
                       KO5mo400st = cat(1, KO5mo400st, load(filename).meanAllST(21, :));
                   elseif contains(filename, "800ms")
                       KO5mo800st = cat(1, KO5mo800st, load(filename).meanAllST(21, :));
                   else contains(filename, "1600ms")
                       KO5mo1600st = cat(1, KO5mo1600st, load(filename).meanAllST(21, :));
                   end
                else 
                   if contains(filename, "400ms")
                       KO5mo400dev = cat(1, KO5mo400dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "800ms")
                       KO5mo800dev = cat(1, KO5mo800dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "1600ms")
                       KO5mo1600dev = cat(1, KO5mo1600dev, load(filename).meanAllDEV(21, :));
                   end

               end
                
           else 
               if contains(filename, "STD")
                   if contains(filename, "400ms")
                       WT5mo400st = cat(1, WT5mo400st, load(filename).meanAllST(21, :));
                   elseif contains(filename, "800ms")
                       WT5mo800st = cat(1, WT5mo800st, load(filename).meanAllST(21, :));
                   else contains(filename, "1600ms")
                       WT5mo1600st = cat(1, WT5mo1600st, load(filename).meanAllST(21, :));
                   end
                else 
                   if contains(filename, "400ms")
                       WT5mo400dev = cat(1, WT5mo400dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "800ms")
                       WT5mo800dev = cat(1, WT5mo800dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "1600ms")
                       WT5mo1600dev = cat(1, WT5mo1600dev, load(filename).meanAllDEV(21, :));
                   end

               end

        end
    elseif contains(filename, "7 Mon")
        if contains(filename, "CLN3")
               if contains(filename, "STD")
                   if contains(filename, "400ms")
                       KO7mo400st = cat(1, KO7mo400st, load(filename).meanAllST(21, :));
                   elseif contains(filename, "800ms")
                       KO7mo800st = cat(1, KO7mo800st, load(filename).meanAllST(21, :));
                   else contains(filename, "1600ms")
                       KO7mo1600st = cat(1, KO7mo1600st, load(filename).meanAllST(21, :));
                   end
                else 
                   if contains(filename, "400ms")
                       KO7mo400dev = cat(1, KO7mo400dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "800ms")
                       KO7mo800dev = cat(1, KO7mo800dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "1600ms")
                       KO7mo1600dev = cat(1, KO7mo1600dev, load(filename).meanAllDEV(21, :));
                   end

               end
                
           else 
               if contains(filename, "STD")
                   if contains(filename, "400ms")
                       WT7mo400st = cat(1, WT7mo400st, load(filename).meanAllST(21, :));
                   elseif contains(filename, "800ms")
                       WT7mo800st = cat(1, WT7mo800st, load(filename).meanAllST(21, :));
                   else contains(filename, "1600ms")
                       WT7mo1600st = cat(1, WT7mo1600st, load(filename).meanAllST(21, :));
                   end
                else 
                   if contains(filename, "400ms")
                       WT7mo400dev = cat(1, WT7mo400dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "800ms")
                       WT7mo800dev = cat(1, WT7mo800dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "1600ms")
                       WT7mo1600dev = cat(1, WT7mo1600dev, load(filename).meanAllDEV(21, :));
                   end

               end

        end
    elseif contains(filename, "9 Mon")
        if contains(filename, "CLN3")
               if contains(filename, "STD")
                   if contains(filename, "400ms")
                       KO9mo400st = cat(1, KO9mo400st, load(filename).meanAllST(21, :));
                   elseif contains(filename, "800ms")
                       KO9mo800st = cat(1, KO9mo800st, load(filename).meanAllST(21, :));
                   else contains(filename, "1600ms")
                       KO9mo1600st = cat(1, KO9mo1600st, load(filename).meanAllST(21, :));
                   end
                else 
                   if contains(filename, "400ms")
                       KO9mo400dev = cat(1, KO9mo400dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "800ms")
                       KO9mo800dev = cat(1, KO9mo800dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "1600ms")
                       KO9mo1600dev = cat(1, KO9mo1600dev, load(filename).meanAllDEV(21, :));
                   end

               end
                
           else 
               if contains(filename, "STD")
                   if contains(filename, "400ms")
                       WT9mo400st = cat(1, WT9mo400st, load(filename).meanAllST(21, :));
                   elseif contains(filename, "800ms")
                       WT9mo800st = cat(1, WT9mo800st, load(filename).meanAllST(21, :));
                   else contains(filename, "1600ms")
                       WT9mo1600st = cat(1, WT9mo1600st, load(filename).meanAllST(21, :));
                   end
                else 
                   if contains(filename, "400ms")
                       WT9mo400dev = cat(1, WT9mo400dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "800ms")
                       WT9mo800dev = cat(1, WT9mo800dev, load(filename).meanAllDEV(21, :));
                   elseif contains(filename, "1600ms")
                       WT9mo1600dev = cat(1, WT9mo1600dev, load(filename).meanAllDEV(21, :));
                   end

               end

           end
    end

end 

alldata = {KO3mo400st, KO3mo400dev, KO3mo800st, KO3mo800dev, KO3mo1600st, KO3mo1600dev, KO5mo400st, KO5mo400dev, KO5mo800st, KO5mo800dev, KO5mo1600st, KO5mo1600dev, KO7mo400st, KO7mo400dev, KO7mo800st, KO7mo800dev, KO7mo1600st, KO7mo1600dev, KO9mo400st, KO9mo400dev, KO9mo800st, KO9mo800dev, KO9mo1600st, KO9mo1600dev, WT3mo400st, WT3mo400dev, WT3mo800st, WT3mo800dev, WT3mo1600st, WT3mo1600dev, WT5mo400st, WT5mo400dev, WT5mo800st, WT5mo800dev, WT5mo1600st, WT5mo1600dev, WT7mo400st, WT7mo400dev, WT7mo800st, WT7mo800dev, WT7mo1600st, WT7mo1600dev, WT9mo400st, WT9mo400dev, WT9mo800st, WT9mo800dev, WT9mo1600st, WT9mo1600dev};
allmmn = zeros(406,24);

% average the data
avg = 0;
for num = 1:48
    sample = alldata{1, num};
    sample = mean(sample, 1);
    for y = 1:406
        alldata{y, num} = sample(y);
    end
end

alldata = cell2mat(alldata);

% calculate the MMN
for i = 1:24
    allmmn(:, i) = alldata(:, i*2) - alldata(:, i*2-1);
end

% make lists of MMN per genotype
% all_mmn_KO = allmmn(:, 1:12);
% all_mmn_WT = allmmn(:, 13:24);

% x and z coordinates for 3d plot and colors
space = zeros(406, 1);
times = -5:400;
style = ["-", "-.", ":", "-", "-.", ":", "-", "-.", ":", "-", "-.", ":"]; 
color = ['k', 'k', 'k', 'r', 'r', 'r', 'g', 'g', 'g', 'b', 'b', 'b'];

% making figure
figure;
hold on
view(3);
xlim([-5 400]);
ylim([0 240]);
title("CTNS KO");
set(gcf, 'Position',  [1000, 1000, 1000, 1000]);
% plot all KO data in one fig
for i = 1:12
    lines(i) = plot3(times, space, allmmn(:, i), 'LineWidth', 2, 'LineStyle', style(i), 'Color', color(i));
    space = space + 20;
end
legend("3mo400ms", "3mo800ms", "3mo1600ms", "5mo400ms", "5mo800ms", "5mo1600ms", "7mo400ms", "7mo800ms", "7mo1600ms", "9mo400ms", "9mo800ms", "9mo1600ms");

% button set up
% list of buttons
% set place in window
% try to get one button through button pressed callback 
% if statements with button value to determine drawing or not
% try with first button to edit something in another window
fig = uifigure;
b1 = uibutton(fig, "Text", "3MO");

while true
    if b1.
        lines(1).LineStyle = "none";
    end
end
