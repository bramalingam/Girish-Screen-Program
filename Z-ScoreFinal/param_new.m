%Name: param
%Date: 11/02/08
%choose parameter
%added: 21/02 also check for cell number and pick 200 cells at
%random

function sset=param_new_set(welldatamat, namevec, slideno)


wc1=0.02; wc2=0.98;sset=[];
for i=1:384
    
    [q, r] = quorem(sym(i),sym(24));
    if r==0
        r = 24;
    end
    if q<16
        q= q + 1;
    end
    display([slideno, q, r])
    ids = startsWith(namevec,[rows{q} cols{r}]);
    
    cc1 = find(ids==1);

    if ~isempty(cc1)
        wi = welldatamat(cc1,5);

        wi=sort(wi);
        wcheck=(1:length(wi))/length(wi);
        ff=find(wcheck>=wc1 & wcheck<=wc2);
        
        if ~isempty(ff)
            wi=wi(ff);
            ws=(wi-mean(wi))/(std(wi)+eps);
%             ws=wi;
        else
            ws=[];
        end        
        sset(i).dat=ws;

    else
        sset(i).dat=[];
    end
end
