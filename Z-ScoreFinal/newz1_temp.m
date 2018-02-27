%Name: newz1
%Date: 21/02/08
%calculate z-scores for each parameter
% calls on slideloader, replist_full, param, kscore

%init
clear; %close all

%params
numslides=28;
numparams=27;

%loading the maps for the three replicates
[ivec1 ivec2 ivec3]=replist_full();

%controls
negc=[287 299  219 235 184 152 162 170 146 75 87 49 11 23 128 275 241 261 208 164 130 138 63 114 37 156  253  196  142  180];
negc=sort(negc);
posc=[247 107 221 55 43 259 255 81];


pdatamat=zeros(numparams,numslides*280,3);
for flag=17

    sdatamat=[];
    for slide=13

        %loading slide replicates seqentially
        [dist1 dist2 dist3]=slideloader_new(slide);

        rdatamat=[];
        for rep=1:3

            switch rep
                case(1)
                    dist=dist1;
                case(2)
                    %dist=dist2;
                    dist=dist2(ivec2);
                case(3)
                    %dist=dist3;
                    dist=dist3(ivec3);
            end

            %sorted normalized distributions
            if flag<24
                wset=param_new(dist,flag);
            else
                wset=param_nuc(dist,flag);
            end

            wmn=[];
            for i=1:300
                wmn=[wmn; mean(wset(i).dat)];
            end
            subplot(3,1,rep)
            imagesc(reshape(wmn,30,10)')
            caxis([0 2000])
            
            disp([flag slide rep])
        end

    end

end

