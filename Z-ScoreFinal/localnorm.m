%localnorm.mat
%to normalise to local wells
%alternative to full normalisation


function dist=localnorm(dist_in)

distmn=[];
for i=1:300
    distmn=[distmn; mean(dist_in(i).dat) std(dist_in(i).dat)];
end

dist=[];
for j=1:300

    vec=dist_in(j).dat;

    if j==1
        mn=mean(distmn([2 31 32],:));
    elseif j==271
        mn=mean(distmn([172 241 242],:));
    elseif j==300
        mn=mean(distmn([270 299 269],:));
    elseif j==30
        mn=mean(distmn([29 59 60],:));
    elseif ismember(j,[2:29])
        mn=mean(distmn([j+1 j-1 j+30 j+29 j+31],:));
    elseif ismember(j,[272:299])
        mn=mean(distmn([j-1 j+1 j-29 j-30 j-31],:));
    elseif ismember(j,[31:30:241])
        mn=mean(distmn([j+1 j+30 j+31 j-30 j-29],:));
    elseif ismember(j,[60:30:270])
        mn=mean(distmn([j-1 j+30 j+29 j-30 j-31],:));
    else
        mn=mean(distmn([j+1 j-1 j+30 j-30 j+31 j-31 j+29 j-29],:));
    end

    vec=(vec-mn(1))./(mn(2)+eps);
    dist(j).dat=vec;
   
end
