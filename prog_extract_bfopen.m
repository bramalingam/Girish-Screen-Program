%Screen : Girish's Screen (VAP aggregation at 24,36 and 48 hours)
%Author : Balaji
%Last edited : 04/07/2014

%Init
clear all;close all;

%Params
%96 well ids
wellvec={'A','B','C','D','E','F','G','H','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
%params
slashtype='/';

%inputdir
for j1=1
    
    %For running directories in batch mode
    if j1==1
        inputdir=['/Users/bramalingam/Dropbox/For Balaji/PRM GFP/24 hour/MFGTMP_140618000002']; %#ok<*NBRAK>        
    elseif j1==2;
        inputdir=['G:\Balaji _ Shared E\Shared E\CCamp\Girish Screen\Images\140813_36hrs'];
    else
        inputdir=['G:\Balaji _ Shared E\Shared E\CCamp\Girish Screen\Images\140813_48hrs'];
    end
    
    %Resultmat
    idx1=findstr(slashtype,inputdir); %#ok<*FSTR>
    resultmat = [inputdir(idx1(end)+1:end) '.mat'];
    
    %path
    filepath=fuf([inputdir slashtype '*.C01'],'detail');
    filepath=filepath{1};
    reader = bfopen(filepath);
    
    welldatamat=[];namevec={};
    for i=1:length(reader)

        %Read GFP
        series1 = reader{i,1};
        gfp1=series1{1,1};
        gfp=double(imtophat(gfp1,strel('disk',12)));
        
        %Read DAPI
        dapi=series1{3,1};
        
        %wellID
        wellsrch='Well ';
        metadata=series1{1,2};
        idx1=findstr(wellsrch,metadata);
        wellid=metadata(idx1(end)+length(wellsrch):idx1(end)+length(wellsrch)+2);         
        wellx=strmatch(wellid(1),wellvec,'exact'); %#ok<*MATCH3>
        welly=str2double(wellid(2:3));
        
        %FieldID
        fieldsrch='Field #';
        idx2=findstr(fieldsrch,metadata);
        fieldnumber=str2double(metadata(idx2(end)+length(fieldsrch):idx2(end)+length(fieldsrch)+1));

        %Threshold dapi
        [aa,ii]=kmeans(double(dapi(:)),3,'emptyaction','singleton');
        linvec1=dapi(:);
        threshvec=[min(linvec1(aa==1)) min(linvec1(aa==2)) min(linvec1(aa==3))];       
        img1=dapi>max(threshvec);
        img2=bwareaopen(bwlabel(img1),300);        
        pixidx=intersect(find(img1==1),find(img2==0));       
        finimg=zeros(size(dapi,1),size(dapi,2));
        finimg(pixidx)=1;
        finimg=imclearborder(bwareaopen(finimg,5));
        clear img2;
        
        nucleus = bwlabel(finimg);
        centvec=regionprops(nucleus,'Centroid'); %#ok<*MRPBW>

        zerovec1=zeros(size(dapi,1),size(dapi,2));
        
        for z=1:length(centvec)
            
            zerovec=zeros(size(dapi,1),size(dapi,2));
            idx=z;
            zerovec(round(centvec(idx).Centroid(2)),round(centvec(idx).Centroid(1)))=1;
            zerovec=imdilate(zerovec,strel('disk',11));
            
            idx2=setdiff(find(zerovec>0),find(zerovec1>0));            
            zerovec(idx2)=z;
            zerovec1=zerovec1+zerovec;
            disp([wellx welly fieldnumber z])

            welldatamat=[welldatamat ; wellx welly fieldnumber length(idx2) mean(gfp(idx2)) sum(gfp(idx2))]; %#ok<*AGROW>
            namevec=[namevec ; [wellid '_' num2str(fieldnumber)]];
        end
                
    end
    
    save(resultmat,'welldatamat','namevec');
end
