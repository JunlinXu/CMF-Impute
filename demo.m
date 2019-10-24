% This is a demo showing how to running PBLR using the uso
%clear;clc
addpath(genpath('./'))
%% load data
M = readtable('uso.txt','Delimiter','\t','ReadRowNames',true,'ReadVariableNames',true);% M is raw data in table form, rows are genes and columns are cells.
M0 = table2array(M); % data matrix
[score1]=CMF(M0,1,1,0.0001,0.0001);% return the imputated data matrix
X = max(10.^score1-1,0);
xlswrite('uso_CMF.csv', X); 