clear all;close all;

load new_36hrs_zscores.mat

for k = [5:10]
    
    rdatamat = rmat{k};
    pdatamat = pmat{k};
    ndatamat = nmat{k};
    hitvec=[];
    for i=1:1000
        
        if i==1
            idx = 1:size(rdatamat,1)*size(rdatamat,2);
        else
            idx = randperm(size(rdatamat,1)*size(rdatamat,2));
        end
        rdat = abs(rdatamat(:));
        threshvec = linspace(min(rdat),max(rdat),150);
        rdat = reshape(rdat(idx),size(rdatamat,1),size(rdatamat,2));
        hits = [];
        for j=1:length(threshvec)
            hits = [hits length(find(sum(rdat>threshvec(j),2)>=2))];
        end
        hitvec = [hitvec ; hits];
        disp([k i])
    end
    
    sumvec=zeros(1,size(hitvec,2));
    for i=1:size(hitvec,1); sumvec = sumvec + double(hitvec(1,:) <= hitvec(i,:)); end
    threshidx = (find(sumvec<=20));
    if isempty(threshidx)
        continue
    end
    %     plot(hitvec(1,:),'-b')
    %     for j=2:1000;hold on;plot(hitvec(j,:),'-r');end
    rdat = abs(rdatamat(:));
    idx = 1:size(rdatamat,1)*size(rdatamat,2);
    rdat = reshape(rdat(idx),size(rdatamat,1),size(rdatamat,2));
    
    pdatamat = pdatamat(:,1:8);
    fpvec = [];fnvec=[];
    for t = 1:length(threshidx)
        fnvec(t) = binocdf(1,3,sum(abs(pdatamat(:))>=threshvec(threshidx(t)))/(length(pdatamat(:))));
        fpvec(t) = 1 - binocdf(1,3,sum(abs(ndatamat(:))>=threshvec(threshidx(t)))/length(pdatamat(:)));
    end
    t = min(intersect(find(fpvec<=0.10),find(fnvec<=0.60)));
    hits = {'no_hits'};
    fp = 0;
    fn = 0;
    if ~isempty(t)
        fn= binocdf(1,3,sum(abs(pdatamat(:))>=threshvec(threshidx(t)))/(length(pdatamat(:))));
        fp = 1 - binocdf(1,3,sum(abs(ndatamat(:))>=threshvec(threshidx(t)))/length(pdatamat(:)));
        hits_idx = find(sum(abs(rdat)>=threshvec(threshidx(t)),2)>=2);
        hits = totcgmap(hits_idx);
    end

    hits1{k,2} = fn;
    hits1{k,3} = fp;
    hits1{k,1} = hits;
end