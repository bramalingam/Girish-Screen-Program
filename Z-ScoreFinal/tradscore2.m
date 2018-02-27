%Name: tradscore2
%Date: 03/08/09
%using the traditional z score calculations
%change added 03/09

function [smat cellnum]=tradscore2(negc,posc,sset)

%reorder
notc=setdiff(1:384,[negc ; posc]);
sset=[sset(negc) sset(notc) sset(posc)];

smat=[];
wsi=[];
%load well i
for i=1:10
    wsi=[wsi ; sset(i).dat];
end

for i = 1:10
    
    for j = 1:10
        
    end
    
end

for j=1:384
    % load well j
    wsj=sset(j).dat;

    if (isempty(wsj))||(isempty(wsi))||(~isempty(find(isnan(wsi))))||(~isempty(find(isnan(wsj))))
        ksstat=0;
    else
        ksstat=(mean(wsj)-mean(wsi))/(std(wsi));
    end
    smat(j)=ksstat;
    cellnum(j)=length(wsj);
end




