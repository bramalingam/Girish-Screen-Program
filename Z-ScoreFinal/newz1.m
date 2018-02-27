%Name: newz1
%Date: 21/02/08
%calculate z-scores for each parameter
% calls on slideloader, replist_full, param, kscore

%init
clear; %close all
timepoint = '36';
load(['totmap_' timepoint 'h']);

%params
numslides=8;

pdatamat=zeros(2,numslides*114,3);
inputdir = '/Users/bramalingam/Downloads/drive-download-20180218T110036Z-001/';

for param = 5:10
    
    rdatamat=[];
    totcgmap=[];
    pdatamat=[];
    ndatamat=[];
    for slide=4:numslides
        
        %controls : read plate map from excel sheet
        negc = totmap{slide,3};
        negc = sort(negc);
        posc = totmap{slide,4};
        
        folderdirec = [inputdir 'PLATE' num2str(slide) '_' timepoint 'Hrs'];
        if exist(folderdirec) == 0
            continue
        end
        %     keyboard
        wset=param_new_set(folderdirec, param);
        
        %ks-test calculations
        smat=kscore2(negc,posc,wset);
        
        %normalization
        smatn=normrow(smat,7);
        mn=mean(smatn(:,8:361));
        negmn = mean(smatn(:,1:7));
        posmn = mean(smatn(:,362:381));
        
        %concatenate and reformat the z-scores to a 114*3 matrix
        rdatamat=[rdatamat ; mn(totmap{slide,1})];
        pdatamat=[pdatamat ; posmn];
        ndatamat=[ndatamat ; negmn];
        totcgmap = [totcgmap ; totmap{slide,2}];
    end
    rmat{param}= rdatamat;
    totcgmap{param} = totcgmap;
    pmat{param} = pdatamat;
    nmat{param} = ndatamat;
    disp(slide)
    
end



