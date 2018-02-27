%Name: kscore2
%Date: 11/03/08
%calculate pairwise ks-scores
%using the ks-statistic instead of the p-value
%change added 21/02

function smat=kscore2(negc,posc,sset)

cmat=[];ci=0;
for i=1:length(negc)
    
    ci=ci+1;
    %load well i    
    wsi=sset(negc(i)).dat;
    
    cj=0;
    for j=1:length(negc)
        
        cj=cj+1;
        % load well j
        wsj=sset(negc(j)).dat;
                   
        if (isempty(wsj))||(isempty(wsi))||(~isempty(find(isnan(wsi))))||(~isempty(find(isnan(wsj))))                 
            ksstat=0;    
        else
            %carry out kstest
            Ne=(length(wsj)*length(wsi))/(length(wsj)+length(wsi));
            [H1 P1 ksstat]=kstest2(wsi,wsj);
            ksstat=(sqrt(Ne)+0.12+0.11/sqrt(Ne))*ksstat;           
        end        
        cmat(ci,cj)=ksstat;
        display([ci, cj])
    end  
    
end

clear i j

cmatn=normrow(cmat,length(negc));
dd=(1:10)+10*(([0:9]));
cmatnn=reshape(cmatn,1,[]);
cmatnn(dd)=0;

cmatn=reshape(cmatnn,10,10);
csum=abs(sum(cmatn)/9);
%csum=abs(mean(cmatn));

[ff ii]=sort(csum);
iigood=ii(1:7); iibad=ii(8:10);

negg=negc(iigood);
negb=negc(iibad);

%reorder
notc=setdiff(1:384,[negc' posc']);  
sset=[sset(negg) sset(notc) sset(posc) sset(negb)];  
Nneg=length(negg);


smat=[];
for i=1:Nneg

    %load well i    
    wsi=sset(i).dat;
    for j=1:384

        % load well j
        wsj=sset(j).dat;   
             
        if (isempty(wsj))||(isempty(wsi))||(~isempty(find(isnan(wsi))))||(~isempty(find(isnan(wsj))))  
            ksstat=0;            
        else
            %carry out kstest
            Ne=(length(wsj)*length(wsi))/(length(wsj)+length(wsi));
            [H1 P1 ksstat]=kstest2(wsi,wsj);
            ksstat=(sqrt(Ne)+0.12+0.11/sqrt(Ne))*ksstat;           
        end        
        smat(i,j)=ksstat;
    end
    
end


