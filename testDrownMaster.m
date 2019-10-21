clear all;close all;clc
addpath(genpath('./DROWN/'));
addpath('./DROWN/columnlegend/');
addpath('./DROWN/gridLegend/');

%% initial %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
datasets = {'STEREO797'}; 

our0wP = zeros(1,length(datasets));
our1wP=our0wP;our2wP = our0wP;our3wP = our0wP;our4wP = our0wP;our5wP = our0wP;our6wP = our0wP;our7wP = our0wP;our8wP = our0wP;
our0wR = our0wP;our0wFM03 = our0wP;our0wFM05 = our0wP;our0wFM07 = our0wP;our0wFM09 = our0wP;our0wFM1= our0wP;
our1wR = our1wP;our1wFM03 = our1wP;our1wFM05 = our1wP;our1wFM07 = our1wP;our1wFM09 = our1wP;our1wFM1= our1wP;
our2wR = our1wP;our2wFM03 = our1wP;our2wFM05 = our1wP;our2wFM07 = our1wP;our2wFM09 = our1wP;our2wFM1= our1wP;
our3wR = our1wP;our3wFM03 = our1wP;our3wFM05 = our1wP;our3wFM07 = our1wP;our3wFM09 = our1wP;our3wFM1= our1wP;
our4wR = our1wP;our4wFM03 = our1wP;our4wFM05 = our1wP;our4wFM07 = our1wP;our4wFM09 = our1wP;our4wFM1= our1wP;
our5wR = our1wP;our5wFM03 = our1wP;our5wFM05 = our1wP;our5wFM07 = our1wP;our5wFM09 = our1wP;our5wFM1= our1wP;
our6wR = our1wP;our6wFM03 = our1wP;our6wFM05 = our1wP;our6wFM07 = our1wP;our6wFM09 = our1wP;our6wFM1= our1wP;
our7wR = our1wP;our7wFM03 = our1wP;our7wFM05 = our1wP;our7wFM07 = our1wP;our7wFM09 = our1wP;our7wFM1= our1wP;
our8wR = our1wP;our8wFM03 = our1wP;our8wFM05 = our1wP;our8wFM07 = our1wP;our8wFM09 = our1wP;our8wFM1= our1wP;


our0fms03=cell(1,length(datasets));our0fms05 =our0fms03; our0fms07=our0fms03; our0fms09=our0fms03; our0fms1=our0fms03;
our1fms03=cell(1,length(datasets));our1fms05 =our1fms03; our1fms07=our1fms03; our1fms09=our1fms03; our1fms1=our1fms03;
our2fms03=cell(1,length(datasets));our2fms05 =our2fms03; our2fms07=our2fms03; our2fms09=our2fms03; our2fms1=our2fms03;
our3fms03=cell(1,length(datasets));our3fms05 =our3fms03; our3fms07=our3fms03; our3fms09=our3fms03; our3fms1=our3fms03;
our4fms03=cell(1,length(datasets));our4fms05 =our4fms03; our4fms07=our4fms03; our4fms09=our4fms03; our4fms1=our4fms03;
our5fms03=cell(1,length(datasets));our5fms05 =our5fms03; our5fms07=our5fms03; our5fms09=our5fms03; our5fms1=our5fms03;
our6fms03=cell(1,length(datasets));our6fms05 =our6fms03; our6fms07=our6fms03; our6fms09=our6fms03; our6fms1=our6fms03;
our7fms03=cell(1,length(datasets));our7fms05 =our7fms03; our7fms07=our7fms03; our7fms09=our7fms03; our7fms1=our7fms03;
our8fms03=cell(1,length(datasets));our8fms05 =our8fms03; our8fms07=our8fms03; our8fms09=our8fms03; our8fms1=our8fms03;


our0Mae = zeros(1,length(datasets));
our1Mae=our0Mae;our2Mae=our0Mae;our3Mae = our0Mae;our4Mae = our0Mae;our5Mae = our0Mae;our6Mae = our0Mae;our7Mae = our0Mae;our8Mae = our0Mae;
our0P = zeros(1,length(datasets));our0R = our0P;our0FM03 = our0P;our0FM05 = our0P;our0FM07 = our0P;our0FM09 = our0P;our0FM1= our0P;    
our1P = zeros(1,length(datasets));our1R = our1P;our1FM03 = our1P;our1FM05 = our1P;our1FM07 = our1P;our1FM09 = our1P;our1FM1= our1P;  
our2P = zeros(1,length(datasets));our2R = our2P;our2FM03 = our2P;our2FM05 = our2P;our2FM07 = our2P;our2FM09 = our2P;our2FM1= our2P;  
our3P = zeros(1,length(datasets));our3R = our3P;our3FM03 = our3P;our3FM05 = our3P;our3FM07 = our3P;our3FM09 = our3P;our3FM1= our3P; 
our4P = zeros(1,length(datasets));our4R = our4P;our4FM03 = our4P;our4FM05 = our4P;our4FM07 = our4P;our4FM09 = our4P;our4FM1= our4P;
our5P = zeros(1,length(datasets));our5R = our5P;our5FM03 = our5P;our5FM05 = our5P;our5FM07 = our5P;our5FM09 = our5P;our5FM1= our5P;
our6P = zeros(1,length(datasets));our6R = our6P;our6FM03 = our6P;our6FM05 = our6P;our6FM07 = our6P;our6FM09 = our6P;our6FM1= our6P;
our7P = zeros(1,length(datasets));our7R = our7P;our7FM03 = our7P;our7FM05 = our5P;our7FM07 = our7P;our7FM09 = our7P;our7FM1= our7P;
our8P = zeros(1,length(datasets));our8R = our8P;our8FM03 = our8P;our8FM05 = our8P;our8FM07 = our8P;our8FM09 = our8P;our8FM1= our8P;

%% drow %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1:length(datasets)
for dd = 1:length(datasets)
    %GroundTruth
    dataset = datasets{1,dd};
    GT_path = ['/'];
%     GT1_path = ['/home/xiaohua/Amulet/对比实验结果/4/OUR/GT_1000_2/'];
    GT = dir([GT_path '*' '.png']);
%      GT1 = dir([GT1_path '*' '.png']);
%     ourPath8 = ['E:\Project1\data\THUR15K\all\SA\'];
%     ourPath7 = ['/media/rjr/E/Project2/results/Amulet/iCoseg/all/'];
%     ourPath6 = ['/media/rjr/E/Project2/results/result0512/iCoseg/all/'];
%     ourPath5 = ['/media/rjr/E/Project2/results/SACS/iCoseg/'];
%     ourPath4 = ['/media/rjr/E/Project2/results/RFPR/iCoseg/'];
%     ourPath3 = ['/media/rjr/E/Project2/results/ODR/iCoseg/'];
%     ourPath2 = ['/medria/rjr/E/Project2/results/HS/iCoseg/'];
%     ourPath1 = ['/media/rjr/E/Project2/results/CB/iCoseg/'];
    ourPath0 = ['/'];
%      ourPath1 = ['/home/xiaohua/Amulet/对比实验结果/ACSD/ACSD_1000/'];
    
    figure,hold on;
    hdlY = [];          
    suffixour0 = ['.png'];%salmap
%      suffixour1 = ['.jpg'];%salmap
%     suffixour1 = ['_CB.png'];
%     suffixour2 = ['_HS.png'];
%     suffixour3 = ['_ODR.png'];
%     suffixour4 = ['_RFPR.png'];
%     suffixour5 = ['_SACS.png'];
%     suffixour6 = ['_inter.png'];
%     suffixour7 = ['_Amulet.png'];
%     suffixour8 = ['_SA.png'];  
    Suffixgt = '.png';%GT
%       Suffixgt1 = '.png';%GT1
   %% PR���� &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 
%     CCour8 = 'c';
    CCour7 = 'b';
    CCour6 = 'g';
    CCour5 = 'm--';
    CCour4 = 'c--';
    CCour3 = 'y--';
    CCour2 = 'b--';
    CCour1 = 'g-';
    CCour0 = 'r';

    
    [~, ~,our0fms03{1,dd}, our0fms05{1,dd}, our0fms07{1,dd}, our0fms09{1,dd}, our0fms1{1,dd}, hdlY_our0]  = ...
        Draw_PRF_Curve(ourPath0,   suffixour0,   GT_path, Suffixgt, true, true,CCour0); 
    
%      [~, ~,our1fms03{1,dd}, our1fms05{1,dd}, our1fms07{1,dd}, our1fms09{1,dd}, our1fms1{1,dd},hdlY_our1]  = ...
%          Draw_PRF_Curve(ourPath1,   suffixour1,   GT1_path, Suffixgt1, true, true,CCour1);    
%     
%     [~, ~,our2fms03{1,dd}, our2fms05{1,dd}, our2fms07{1,dd}, our2fms09{1,dd}, our2fms1{1,dd},hdlY_our2]  = ...
%         Draw_PRF_Curve(ourPath2,   suffixour2,   GT_path, Suffixgt, true, true,CCour2);  
%         
%     [~, ~,our3fms03{1,dd}, our3fms05{1,dd}, our3fms07{1,dd}, our3fms09{1,dd}, our3fms1{1,dd},hdlY_our3]  = ...
%         Draw_PRF_Curve(ourPath3,   suffixour3,   GT_path, Suffixgt, true, true,CCour3);  
%     
%     [~, ~,our4fms03{1,dd}, our4fms05{1,dd}, our4fms07{1,dd}, our4fms09{1,dd}, our4fms1{1,dd},hdlY_our4]  = ...
%         Draw_PRF_Curve(ourPath4,   suffixour4,   GT_path, Suffixgt, true, true,CCour4); 
%     
%     [~, ~,our5fms03{1,dd}, our5fms05{1,dd}, our5fms07{1,dd}, our5fms09{1,dd}, our5fms1{1,dd},hdlY_our5]  = ...
%         Draw_PRF_Curve(ourPath5,   suffixour5,   GT_path, Suffixgt, true, true,CCour5); 
%     
%     [~, ~,our6fms03{1,dd}, our6fms05{1,dd}, our6fms07{1,dd}, our6fms09{1,dd}, our6fms1{1,dd},hdlY_our6]  = ...
%         Draw_PRF_Curve(ourPath6,   suffixour6,   GT_path, Suffixgt, true, true,CCour6); 
% 
%     [~, ~,our7fms03{1,dd}, our7fms05{1,dd}, our7fms07{1,dd}, our7fms09{1,dd}, our7fms1{1,dd},hdlY_our7]  = ...
%         Draw_PRF_Curve(ourPath7,   suffixour7,   GT_path, Suffixgt, true, true,CCour7); 
%     
%     [~, ~,our8fms03{1,dd}, our8fms05{1,dd}, our8fms07{1,dd}, our8fms09{1,dd}, our8fms1{1,dd},hdlY_our8]  = ...
%         Draw_PRF_Curve(ourPath8,   suffixour8,   GT_path, Suffixgt, true, true,CCour8); 

    
%    hdlY = [hdlY;hdlY_our0;hdlY_our1;hdlY_our2;hdlY_our3;hdlY_our4;hdlY_our5;hdlY_our6;hdlY_our7;]; %
    hdlY = [hdlY;hdlY_our0;]; %
%     hdlY = [hdlY;hdlY_our0;hdlY_our1;]; %
    hold off;grid on;title([dataset])   
    legend_str =  {'OUR1';'Fusionnet';'HS';'ODR';'RFPR';'SACS';'OUR2';'Amulet';}; 
    gridLegend(hdlY,1,legend_str,'location','southwest','Fontsize',80);    
    set(gca,'box','on');
    xlabel('Recall');
    ylabel('Precision')
    set(get(gca,'XLabel'),'FontSize',20);%ͼ������Ϊ8 point��С5��
    set(get(gca,'YLabel'),'FontSize',20);
    
%     %% ����F-measures���� &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
% %     fx = [0:1:255];
%     fx = [255:-1:0];
%     % FM03
%     figure,hold on;
%     Fhanle = [];
%     hdlour0 = plot(fx, our0fms03{1,dd}, CCour0, 'linewidth', 2);
%     hdlour1 = plot(fx, our1fms03{1,dd}, CCour1, 'linewidth', 2);
%     hdlour2 = plot(fx, our2fms03{1,dd}, CCour2, 'linewidth', 2);
%     hdlour3 = plot(fx, our3fms03{1,dd}, CCour3, 'linewidth', 2);
%     hdlour4 = plot(fx, our4fms03{1,dd}, CCour4, 'linewidth', 2);
%     hdlour5 = plot(fx, our5fms03{1,dd}, CCour5, 'linewidth', 2);
%     hdlour6 = plot(fx, our6fms03{1,dd}, CCour6, 'linewidth', 2);
%     hdlour7 = plot(fx, our7fms03{1,dd}, CCour7, 'linewidth', 2);
%     hdlour8 = plot(fx, our8fms03{1,dd}, CCour8, 'linewidth', 2);
%     hdlmean = plot(fx, meanfms03{1,dd}, CCmean, 'linewidth', 2);
%     hdlexp = plot(fx, meanfms03{1,dd}, CCexp, 'linewidth', 2);
%     hdllog = plot(fx, meanfms03{1,dd}, CClog, 'linewidth', 2);
%     Fhanle = [Fhanle;hdlour0;hdlour7;hdlour8;hdlmean;hdlexp;hdllog;hdlour1;hdlour2;hdlour3;hdlour4;hdlour5;hdlour6;]; %hdlour0;hdlour1;hdlour2;
%     hold off;grid on;  title([dataset,'-Fmeasures03']) 
%     legend_str =  {'OUR';'ASF';'SA';'AVE';'EXP';'LOG';'DRFI';'DSR';'EQCUT';'RFCN';'LEGS';'ST';};  %'sfusion';'co';'final'
%     gridLegend(Fhanle,2,legend_str,'location','southwest','Fontsize',16);    
%     set(gca,'box','on');xlabel('threshold');ylabel('F-measure')
%     axis([0 250,0,1])
%     set(get(gca,'XLabel'),'FontSize',16);%ͼ������Ϊ8 point��С5��
%     set(get(gca,'YLabel'),'FontSize',16);
%     % FM1
% %     fx = [255:-1:0];
%     figure,hold on;
%     Fhanle = [];
%     hdlour0 = plot(fx, our0fms1{1,dd}, CCour0, 'linewidth', 2);
%     hdlour1 = plot(fx, our1fms1{1,dd}, CCour1, 'linewidth', 2);
%     hdlour2 = plot(fx, our2fms1{1,dd}, CCour2, 'linewidth', 2);
%     hdlour3 = plot(fx, our3fms1{1,dd}, CCour3, 'linewidth', 2);
%     hdlour4 = plot(fx, our4fms1{1,dd}, CCour4, 'linewidth', 2);
%     hdlour5 = plot(fx, our5fms1{1,dd}, CCour5, 'linewidth', 2);
%     hdlour6 = plot(fx, our6fms1{1,dd}, CCour6, 'linewidth', 2);
%     hdlour7 = plot(fx, our7fms1{1,dd}, CCour7, 'linewidth', 2);
%     hdlour8 = plot(fx, our8fms1{1,dd}, CCour8, 'linewidth', 2);
%     hdlmean = plot(fx, meanfms1{1,dd}, CCmean, 'linewidth', 2);
%     hdlexp = plot(fx, expfms1{1,dd}, CCexp, 'linewidth', 2);
%     hdllog = plot(fx, logfms1{1,dd}, CClog, 'linewidth', 2);
%     
%     Fhanle = [Fhanle;hdlour0;hdlour7;hdlour8;hdlmean;hdlexp;hdllog;hdlour1;hdlour2;hdlour3;hdlour4;hdlour5;hdlour6;]; %hdlour0;hdlour1;hdlour2;
%     hold off;grid on;  title([dataset,'-Fmeasure']) 
%     legend_str =  {'OUR';'ASF';'SA';'AVE';'EXP';'LOG';'DRFI';'DSR';'EQCUT';'RFCN';'LEGS';'ST';};  %'sfusion';'co';'final'
%     gridLegend(Fhanle,2,legend_str,'location','southwest','Fontsize',15);    
%     set(gca,'box','on');xlabel('threshold');ylabel('F-measure')
%     axis([0 250,0,1])
%     set(get(gca,'XLabel'),'FontSize',15);%ͼ������Ϊ8 point��С5��
%     set(get(gca,'YLabel'),'FontSize',15);
%   
    %% ����MAE &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    our0Mae(1,dd) = CalMeanMAE(ourPath0, suffixour0, GT_path, Suffixgt);
%     our1Mae(1,dd) = CalMeanMAE(ourPath1, suffixour1, GT1_path, Suffixgt1);
%     our2Mae(1,dd) = CalMeanMAE(ourPath2, suffixour2, GT_path, Suffixgt);
%     our3Mae(1,dd) = CalMeanMAE(ourPath3, suffixour3, GT_path, Suffixgt);
%     our4Mae(1,dd) = CalMeanMAE(ourPath4, suffixour4, GT_path, Suffixgt);
%     our5Mae(1,dd) = CalMeanMAE(ourPath5, suffixour5, GT_path, Suffixgt);
%     our6Mae(1,dd) = CalMeanMAE(ourPath6, suffixour6, GT_path, Suffixgt);
%     our7Mae(1,dd) = CalMeanMAE(ourPath7, suffixour7, GT_path, Suffixgt);
%     our8Mae(1,dd) = CalMeanMAE(ourPath8, suffixour8, GT_path, Suffixgt);
     
    %% ����ƽ���F-measure /precision /recall   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    [our0P(1,dd),our0R(1,dd),our0FM03(1,dd),our0FM05(1,dd),our0FM07(1,dd),our0FM09(1,dd),our0FM1(1,dd)] = ...
        compute_average_prf(ourPath0,  suffixour0, GT_path, Suffixgt);   
    
%     [our1P(1,dd),our1R(1,dd),our1FM03(1,dd),our1FM05(1,dd),our1FM07(1,dd),our1FM09(1,dd),our1FM1(1,dd)] = ...
%         compute_average_prf(ourPath1,  suffixour1, GT1_path, Suffixgt1);   
%     
%     [our2P(1,dd),our2R(1,dd),our2FM03(1,dd),our2FM05(1,dd),our2FM07(1,dd),our2FM09(1,dd),our2FM1(1,dd)] = ...
%         compute_average_prf(ourPath2,  suffixour2, GT_path, Suffixgt);   
%     
%     [our3P(1,dd),our3R(1,dd),our3FM03(1,dd),our3FM05(1,dd),our3FM07(1,dd),our3FM09(1,dd),our3FM1(1,dd)] = ...
%         compute_average_prf(ourPath3,  suffixour3, GT_path, Suffixgt);
% 
%     [our4P(1,dd),our4R(1,dd),our4FM03(1,dd),our4FM05(1,dd),our4FM07(1,dd),our4FM09(1,dd),our4FM1(1,dd)] = ...
%         compute_average_prf(ourPath4,  suffixour4, GT_path, Suffixgt);
% 
%     [our5P(1,dd),our5R(1,dd),our5FM03(1,dd),our5FM05(1,dd),our5FM07(1,dd),our5FM09(1,dd),our5FM1(1,dd)] = ...
%         compute_average_prf(ourPath5,  suffixour5, GT_path, Suffixgt);
% 
%     [our6P(1,dd),our6R(1,dd),our6FM03(1,dd),our6FM05(1,dd),our6FM07(1,dd),our6FM09(1,dd),our6FM1(1,dd)] = ...
%         compute_average_prf(ourPath6,  suffixour6, GT_path, Suffixgt);
% 
%     [our7P(1,dd),our7R(1,dd),our7FM03(1,dd),our7FM05(1,dd),our7FM07(1,dd),our7FM09(1,dd),our7FM1(1,dd)] = ...
%         compute_average_prf(ourPath7,  suffixour7, GT_path, Suffixgt);
%  
%     [our8P(1,dd),our8R(1,dd),our8FM03(1,dd),our8FM05(1,dd),our8FM07(1,dd),our8FM09(1,dd),our8FM1(1,dd)] = ...
%         compute_average_prf(ourPath8,  suffixour8, GT_path, Suffixgt);


    %% ��ȨF-MEASURE &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    [our0wP(1,dd),our0wR(1,dd),our0wFM03(1,dd),our0wFM05(1,dd),our0wFM07(1,dd),our0wFM09(1,dd),our0wFM1(1,dd)] = ...
        compute_weighted_prf(ourPath0,  suffixour0, GT_path, Suffixgt);   
    
%     [our1wP(1,dd),our1wR(1,dd),our1wFM03(1,dd),our1wFM05(1,dd),our1wFM07(1,dd),our1wFM09(1,dd),our1wFM1(1,dd)] = ...
%         compute_weighted_prf(ourPath1,  suffixour1, GT1_path, Suffixgt1); 
%  
%     [our2wP(1,dd),our2wR(1,dd),our2wFM03(1,dd),our2wFM05(1,dd),our2wFM07(1,dd),our2wFM09(1,dd),our2wFM1(1,dd)] = ...
%         compute_weighted_prf(ourPath2,  suffixour2, GT_path, Suffixgt);
%     
%     [our3wP(1,dd),our3wR(1,dd),our3wFM03(1,dd),our3wFM05(1,dd),our3wFM07(1,dd),our3wFM09(1,dd),our3wFM1(1,dd)] = ...
%         compute_weighted_prf(ourPath3,  suffixour3, GT_path, Suffixgt);
%    
%     [our4wP(1,dd),our4wR(1,dd),our4wFM03(1,dd),our4wFM05(1,dd),our4wFM07(1,dd),our4wFM09(1,dd),our4wFM1(1,dd)] = ...
%         compute_weighted_prf(ourPath4,  suffixour4, GT_path, Suffixgt);
%  
%     [our5wP(1,dd),our5wR(1,dd),our5wFM03(1,dd),our5wFM05(1,dd),our5wFM07(1,dd),our5wFM09(1,dd),our5wFM1(1,dd)] = ...
%         compute_weighted_prf(ourPath5,  suffixour5, GT_path, Suffixgt);
%     
%     [our6wP(1,dd),our6wR(1,dd),our6wFM03(1,dd),our6wFM05(1,dd),our6wFM07(1,dd),our6wFM09(1,dd),our6wFM1(1,dd)] = ...
%         compute_weighted_prf(ourPath6,  suffixour6, GT_path, Suffixgt);
% 
%     [our7wP(1,dd),our7wR(1,dd),our7wFM03(1,dd),our7wFM05(1,dd),our7wFM07(1,dd),our7wFM09(1,dd),our7wFM1(1,dd)] = ...
%         compute_weighted_prf(ourPath7,  suffixour7, GT_path, Suffixgt);
    
%     [our8wP(1,dd),our8wR(1,dd),our8wFM03(1,dd),our8wFM05(1,dd),our8wFM07(1,dd),our8wFM09(1,dd),our8wFM1(1,dd)] = ...
%         compute_weighted_prf(ourPath8,  suffixour8, GT_path, Suffixgt);

 end
PRECISION = [our0P;our1P;our2P;our3P;our4P;our5P;our6P;our7P;]%our8P;
RECALL = [our0R;our1R;our2R;our3R;our4R;our5R;our6R;our7R;] %our8R;
F03  = [our0FM03;our1FM03;our2FM03;our3FM03;our4FM03;our5FM03;our6FM03;our7FM03;] %ur8FM03;
F1   = [our0FM1;our1FM1;our2FM1;our3FM1;our4FM1;our5FM1;our6FM1;our7FM1;] %our8FM1
WF03 = [our0wFM03;our1wFM03;our2wFM03;our3wFM03;our4wFM03;our5wFM03;our6wFM03;our7wFM03;] %ur8wFM03
WF1  = [our0wFM1;our1wFM1;our2wFM1;our3wFM1;our4wFM1;our5wFM1;our6wFM1;our7wFM1;] %our8wFM1;
MAES = [our0Mae;our1Mae;our2Mae;our3Mae;our4Mae;our5Mae;our6Mae;our7Mae;]; %our8Mae;


