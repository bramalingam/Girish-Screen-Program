%Name: param
%Date: 11/02/08
%choose parameter
%added: 21/02 also check for cell number and pick 200 cells at
%random

function sset=param_new_set(foldername, param)


wc1=0.02; wc2=0.98;sset=[];
for i=1:384

    load([foldername '/' num2str(i) '.mat'])
    
    cc1 = length(welldatamat);  
    disp(i)
    if cc1 ~= 0
        wi = welldatamat(:, param);
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
