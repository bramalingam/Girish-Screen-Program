%Name: normrow
%Date: 21/02/08
%norm scores to the row mean and standard deviation

function smatn=normrow(smat,Nneg)

smatn=[];
for row=1:size(smat,1)
    
    vec=smat(row,1:Nneg);
    vec=vec(vec>0);
    
    if isempty(vec)
       smatn=[smatn; zeros(1,size(smat,2))]; 
    else
       smatn=[smatn; (smat(row,:)-(mean(vec)))/std(vec)];  
    end
end



