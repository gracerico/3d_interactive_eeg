% Grace Rico 7/19/23
% EEG data visualization script
% Input is each of the filenames of ST and DEV saved from EEG sessions.
% Input filenames are sorted by type and data is loaded
% MMN is calculated from loaded data and plotted in 3D axis with the
% order by month then ISI (indicated by figure legend)

close all; clear all; clc;
% load('ts.mat');
main;

function main
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

    disp(allmmn);
    
    % make lists of MMN per genotype
    % all_mmn_KO = allmmn(:, 1:12);
    % all_mmn_WT = allmmn(:, 13:24);
    
    % x and z coordinates for 3d plot and colors
    space = zeros(406, 1);
    times = -5:400;
    style = ["-", "-.", ":", "-", "-.", ":", "-", "-.", ":", "-", "-.", ":", "-", "-.", ":", "-", "-.", ":", "-", "-.", ":", "-", "-.", ":"]; 
    color = ['k', 'k', 'k', 'r', 'r', 'r', 'g', 'g', 'g', 'b', 'b', 'b', 'k', 'k', 'k', 'r', 'r', 'r', 'g', 'g', 'g', 'b', 'b', 'b'];
    
    % plot KO figure
    subplot(1, 2, 1);
%     f = figure('Name', "figure");
    hold on
    view(3);
    xlim([-5 400]);
    ylim([0 240]);
    title("CLN3 KO");
    % WT data
    for i = 1:12
        lines(i) = plot3(times, space, allmmn(:, i), 'LineWidth', 2, 'LineStyle', style(i), 'Color', color(i));
        space = space + 20;
    end
    
    % buttons 
    sideview = uicontrol('String','Side View','Units','normalized','Position',[0.00995568263045,0.94641256281407,.05,0.0354],'Visible','on', 'Enable', 'on', 'Callback', @snapToSideView);
    frontview = uicontrol('String', 'Front View', 'Units','normalized','Position',[0.00995568263045,0.91641256281407,0.05,0.0354], 'Visible', 'on', 'Enable', 'on', 'Callback', @snaptofront);
    button3mo = uicontrol('Style', 'togglebutton', 'String', '3 MO', 'Units','normalized','Position',[0.00995568263045,0.88641256281407,0.05,0.0354], 'Visible', 'on', 'Enable', 'on', 'Callback', @three_mo_toggle);
    button5mo = uicontrol('Style', 'togglebutton', 'String', '5 MO', 'Units','normalized','Position',[0.00995568263045,0.85641256281407,0.05,0.0354], 'Visible', 'on', 'Enable', 'on', 'Callback', @five_mo_toggle);
    button7mo = uicontrol('Style', 'togglebutton', 'String', '7 MO', 'Units', 'normalized', 'Position', [0.00995568263045,0.82641256281407,0.05,0.0354], 'Visible', 'on', 'Enable', 'on', 'Callback', @seven_mo_toggle);
    button9mo = uicontrol('Style', 'togglebutton', 'String', '9 MO', 'Units', 'normalized', 'Position', [0.00995568263045,0.79641256281407,0.05,0.0354], 'Visible', 'on', 'Enable', 'on', 'Callback', @nine_mo_toggle);
    b400 = uicontrol('Style', 'togglebutton', 'String', '400 ms', 'Units', 'normalized', 'Position', [0.00995568263045,0.76641256281407,0.05,0.0354], 'Visible', 'on', 'Enable', 'on', 'Callback', @b400_toggle);
    b800 = uicontrol('Style', 'togglebutton', 'String', '800 ms', 'Units', 'normalized', 'Position', [0.00995568263045,0.73641256281407,0.05,0.0354], 'Visible', 'on', 'Enable', 'on', 'Callback', @b800_toggle);
    b1600 = uicontrol('Style', 'togglebutton', 'String', '1600 ms', 'Units', 'normalized', 'Position', [0.00995568263045,0.70641256281407,0.05,0.0354], 'Visible', 'on', 'Enable', 'on', 'Callback', @b1600_toggle);
    
    %plot WT figure
    subplot(1, 2, 2);
%     f2 = figure('Name', "figure");
    space = zeros(406, 1);
    hold on
    view(3);
    xlim([-5 400]);
    ylim([0 240]);
    title("CLN3 WT");

    % WT data
    for i = 13:24
        lines(i) = plot3(times, space, allmmn(:, i), 'LineWidth', 2, 'LineStyle', style(i), 'Color', color(i));
        space = space + 20;
    end  

    legend("3mo400ms", "3mo800ms", "3mo1600ms", "5mo400ms", "5mo800ms", "5mo1600ms", "7mo400ms", "7mo800ms", "7mo1600ms", "9mo400ms", "9mo800ms", "9mo1600ms", 'Position', [0.486647487190949 0.791334798994975 0.065403859899928 0.177763819095477]);
    
    function snapToSideView(~, ~)
    %     disp("snap done");
        subplot(1, 2, 1);
        view(-90, 0);
        subplot(1, 2, 2);
        view(-90, 0);
    end
    
    function snaptofront(~, ~)
        subplot(1, 2, 1);
        view(0, 0);
        subplot(1, 2, 2);
        view(0, 0);
    end
    
    function three_mo_toggle(~, ~)
        if button3mo.Value
            lines(1).LineStyle = 'none';
            lines(2).LineStyle = 'none';
            lines(3).LineStyle = 'none';
            lines(13).LineStyle = 'none';
            lines(14).LineStyle = 'none';
            lines(15).LineStyle = 'none';
        else
            lines(1).LineStyle = '-';
            lines(2).LineStyle = '-.';
            lines(3).LineStyle = ':';
            lines(13).LineStyle = '-';
            lines(14).LineStyle = '-.';
            lines(15).LineStyle = ':';
        end
    end
    
    function five_mo_toggle(~, ~)
        if button5mo.Value
            lines(4).LineStyle = 'none';
            lines(5).LineStyle = 'none';
            lines(6).LineStyle = 'none';
            lines(16).LineStyle = 'none';
            lines(17).LineStyle = 'none';
            lines(18).LineStyle = 'none';
        else
            lines(4).LineStyle = '-';
            lines(5).LineStyle = '-.';
            lines(6).LineStyle = ':';
            lines(16).LineStyle = '-';
            lines(17).LineStyle = '-.';
            lines(18).LineStyle = ':';
        end
    end

    function seven_mo_toggle(~, ~)
        if button7mo.Value
            lines(7).LineStyle = 'none';
            lines(8).LineStyle = 'none';
            lines(9).LineStyle = 'none';
            lines(19).LineStyle = 'none';
            lines(20).LineStyle = 'none';
            lines(21).LineStyle = 'none';
        else 
            lines(7).LineStyle = '-';
            lines(8).LineStyle = '-.';
            lines(9).LineStyle = ':';
            lines(19).LineStyle = '-';
            lines(20).LineStyle = '-.';
            lines(21).LineStyle = ':';
        end
    end

    function nine_mo_toggle(~, ~)
        if button9mo.Value
            lines(10).LineStyle = 'none';
            lines(11).LineStyle = 'none';
            lines(12).LineStyle = 'none';
            lines(22).LineStyle = 'none';
            lines(23).LineStyle = 'none';
            lines(24).LineStyle = 'none';
        else 
            lines(10).LineStyle = '-';
            lines(11).LineStyle = '-.';
            lines(12).LineStyle = ':';
            lines(22).LineStyle = '-';
            lines(23).LineStyle = '-.';
            lines(24).LineStyle = ':';
        end
    end

    function b400_toggle(~, ~)
        if b400.Value
            lines(1).LineStyle = 'none';
            lines(4).LineStyle = 'none';
            lines(7).LineStyle = 'none';
            lines(10).LineStyle = 'none';
            lines(13).LineStyle = 'none';
            lines(16).LineStyle = 'none';
            lines(19).LineStyle = 'none';
            lines(22).LineStyle = 'none';
        else 
            lines(1).LineStyle = '-';
            lines(4).LineStyle = '-';
            lines(7).LineStyle = '-';
            lines(10).LineStyle = '-';
            lines(13).LineStyle = '-';
            lines(16).LineStyle = '-';
            lines(19).LineStyle = '-';
            lines(22).LineStyle = '-';
        end
    end

    function b800_toggle(~, ~)
        if b800.Value
            lines(2).LineStyle = 'none';
            lines(5).LineStyle = 'none';
            lines(8).LineStyle = 'none';
            lines(11).LineStyle = 'none';
            lines(14).LineStyle = 'none';
            lines(17).LineStyle = 'none';
            lines(20).LineStyle = 'none';
            lines(23).LineStyle = 'none';
        else 
            lines(2).LineStyle = '-.';
            lines(5).LineStyle = '-.';
            lines(8).LineStyle = '-.';
            lines(11).LineStyle = '-.';
            lines(14).LineStyle = '-.';
            lines(17).LineStyle = '-.';
            lines(20).LineStyle = '-.';
            lines(23).LineStyle = '-.';
        end
    end

    function b1600_toggle(~, ~)
        if b1600.Value
            lines(3).LineStyle = 'none';
            lines(6).LineStyle = 'none';
            lines(9).LineStyle = 'none';
            lines(12).LineStyle = 'none';
            lines(15).LineStyle = 'none';
            lines(18).LineStyle = 'none';
            lines(21).LineStyle = 'none';
            lines(24).LineStyle = 'none';
        else 
            lines(3).LineStyle = ':';
            lines(6).LineStyle = ':';
            lines(9).LineStyle = ':';
            lines(12).LineStyle = ':';
            lines(15).LineStyle = ':';
            lines(18).LineStyle = ':';
            lines(21).LineStyle = ':';
            lines(24).LineStyle = ':';
        end
    end

end 
   
    