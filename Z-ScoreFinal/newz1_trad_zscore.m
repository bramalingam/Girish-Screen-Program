%Name: newz1
%Date: 21/02/08
%calculate z-scores for each parameter
% calls on slideloader, replist_full, param, kscore

%init
% clear; %close all
load totmap_36h;

%params
numslides=6;

pdatamat=zeros(2,numslides*114,3);

rdatamat=[];
totcgmap=[];
pdatamat=[];
ndatamat=[];
for slide=1:numslides
    
    %controls : read plate map from excel sheet
    negc = totmap{slide,3};
    negc = sort(negc);
    posc = totmap{slide,4};
    
    load(['/Users/bramalingam/Desktop/Girish_Screen/Balaji-code_averageGFP/plate' num2str(slide) '_36hrs.mat'])
%     keyboard
    wset=param_new(welldatamat,namevec,slide);
    
    %ks-test calculations
    smat=tradscore2(negc,posc,wset);
    
    %normalization
    smatn=normrow(smat,10);
    mn=smatn(:,11:364);
    negmn = smatn(:,1:10);
    posmn = smatn(:,365:384);

    %concatenate and reformat the z-scores to a 114*3 matrix
    rdatamat=[rdatamat ; mn(totmap{slide,1})];
    totcgmap = [totcgmap ; totmap{slide,2}];
    pdatamat=[pdatamat ; posmn];
    ndatamat=[ndatamat ; negmn];
    disp(slide)

end



