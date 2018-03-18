%Screen : Girish's Screen (VAP aggregation at 24,36 and 48 hours)
%Author : Balaji
%Last edited : 04/07/2014

%Init
clear all;close all;

%Params
%96 well ids
wellvec={'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
%params
masterdir = '/Users/bramalingam/Google Drive';
slashtype='/';
timepoints = {'24 HRS' '36 HRS'};
subdirec = dir ([masterdir slashtype 'Plate*']);
cntr = 1;
for i = 1:length(subdirec)
    platedir = [subdirec(i).folder slashtype subdirec(i).name];
    for j = 1:2
       timedir = [platedir slashtype timepoints{j}];
       platenamedir = dir([timedir slashtype 'MFGTMP_*']);
       platenamedir = [platenamedir.folder slashtype platenamedir.name];
       inputdirvec{cntr,1} = platenamedir; %#ok<*SAGROW>
       platename = [subdirec(i).name '_' timepoints{j}];
       inputdirvec{cntr,2} = platename;
       cntr = cntr + 1;
    end
end
keyboard
batchlength = 1;
disks = [3 7 11];
%inputdir
for j1=1:length(inputdirvec)
    
    inputdir = inputdirvec{j1,1};
    if exist(inputdir) == 0
        continue
    end
    %Resultmat
    idx1=findstr(slashtype,inputdir); %#ok<*FSTR>
    resultdir = inputdirvec{j1,2};
    if exist(resultdir) == 0
        mkdir(resultdir)
    end

    %path
    filepath1=fuf([inputdir slashtype '*d0.C01'],'detail');
     %Read GFP
    filepath=filepath1{1}; 
    reader = bfGetReader(filepath);

    welldatamat=[];namevec={};wellcounter = 1;
    for i=1:reader.getSeriesCount()
        
        reader.setSeries(i-1)
        gfp1= bfGetPlane(reader, 2);
        
        for gf = 1:length(disks)
            gfp{gf,1} = imtophat(gfp1,strel('disk',disks(gf)));
            gfp{gf,2} = bwlabel(imbinarize(gfp{gf,1},graythresh(gfp{gf,1})));
        end
        
        %Read DAPI
        dapi=bfGetPlane(reader, 1); %corrected read location

        %wellID & %FieldID
        dapi = imadjust(dapi);
        wellsrch='_';
        metadata = reader.getSeriesUsedFiles();
        metadata= char(metadata(1));
        idx1=max(findstr(wellsrch,metadata));
        wellid = metadata(idx1+1:idx1+3);   
        fieldnumber=str2double(metadata(idx1+5:idx1+6));
        wellx=strmatch(wellid(1),wellvec,'exact'); %#ok<*MATCH3>
        welly=str2double(wellid(2:3));
        wellid_check = (wellx-1)*24 + welly;
        if wellid_check ~= wellcounter
            save([resultdir '/' num2str(wellcounter) '.mat'],'welldatamat','namevec');
            welldatamat = [];
            namevec={};
            wellcounter = wellcounter + 1;
        end
        %Threshold dapi
        img1 = imbinarize(dapi,graythresh(dapi));
        img2=bwareaopen(bwlabel(img1),300);        
        pixidx=intersect(find(img1==1),find(img2==0));      
        finimg=zeros(size(dapi,1),size(dapi,2));
        finimg(pixidx)=1;
        finimg=imclearborder(bwareaopen(finimg,5));
        clearvars img1 img2 pixidx;
        
        nucleus = finimg;
        nucleus = bwlabel(bwmorph(nucleus,'shrink',Inf));        
        zerovec1=imdilate(nucleus,strel('disk',11));
        zerovec1(finimg>0) = 0;
        L = watershed(zerovec1);
        clearvars finimg dapi centvec idx idx2 nucleus;
        for idx = 1:max(L(:))
            idx2 = find(L==idx);
            if length(idx2)<1000
                gfpvec = [];
                for gf = 1:length(disks)
                    idx3 = find(gfp{gf,2}>0);
                    idx3 = intersect(idx2,idx3);
                    if isempty(idx3)
                        meanandsumvec = [0 0];
                    else
                        meanandsumvec = [mean(gfp{gf,1}(idx3)) sum(gfp{gf,1}(idx3))];
                    end
                    gfpvec = [gfpvec mean(gfp{gf,1}(idx2)) sum(gfp{gf,1}(idx2)) meanandsumvec...
                        sum(gfp{gf,2}(idx2)>0)/length(idx2) length(unique(gfp{gf,2}(idx2)))-1];
                end
                welldatamat=[welldatamat ; wellx welly fieldnumber ...
                    length(idx2)  gfpvec]; %#ok<*AGROW>
                namevec=[namevec ; [wellid '_' num2str(fieldnumber)]];
            end
        end
        
        disp([j1 wellx welly fieldnumber])
    end
    save([resultdir '/' num2str(wellcounter) '.mat'],'welldatamat','namevec');
end
