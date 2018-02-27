clear all;close all;

negatives = {'??????', '500c', '???????'};
positives = {'0c', '1000c', 'GFP', 'VAPB'};

platemap={};
for slide=1:8
   [aa ii] = xlsread('/Users/bramalingam/Desktop/Girish_Screen/Plate maps for screen plate1-8.xlsx',['Plate ',num2str(slide), '_36 Hours']);
   [a1 i1]=find(strcmp(ii(1:26,:),'A' ));
   platemap = ii(a1:a1+15,i1+1:i1+24);
   platemap1 = reshape(platemap',384,1);
   negc = [];
   for conts=1:3
        negc = [negc ; find(strcmp(platemap1,negatives(conts)))];
   end
   posc = [];
   for conts=1:4
        posc = [posc ; find(strcmp(platemap1,positives(conts)))];
        display(length(find(strcmp(platemap1,positives(conts)))))
   end
   
%    notc1 = [];
%    for conts=1:2
%        notc1 = [notc1 ; find(strcmp(platemap1,extremes(conts)))];
%    end
   
   notc=setdiff(1:384,[negc ; posc]);
   totlist = unique(platemap1(notc));
   
   notcmat = []; totcgmat = [];
   for i=1:length(totlist)
        ff1=find(strcmp(platemap1, totlist(i)));
        ff2=[];
        for j=1:length(ff1)
            ff2(j)=find(notc==ff1(j));
        end
        ff2 = reshape(ff2,[],3);
        notcmat = [notcmat ; ff2];
        totcgmat = [totcgmat ; repmat(totlist(i),size(ff2,1),1)]; 
   end
    
   totmap{slide,1} = notcmat;
   totmap{slide,2} = totcgmat;
   totmap{slide,3} = negc;
   totmap{slide,4} = posc;
%    totmap{slide,5} = sort(notc1);
end