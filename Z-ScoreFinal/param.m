%Name: param
%Date: 11/02/08
%choose parameter
%added: 21/02 also check for cell number and pick 200 cells at
%random

function sset=param(dist,flag)

wc1=0.02; wc2=0.98;sset=[];
for i=1:300

    ind=i;

    switch(flag)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        case(1) %fld large disk
            wfull=dist{ind}.fld;
            wi=wfull(1,:);
            areai=dist{ind}.cellsize;
            areai(wi==0)=1;
            wi=wi./areai;
        case(2) %fld medium disk
            wfull=dist{ind}.fld;
            wi=wfull(2,:);
            areai=wfull(4,:);
            areai(wi==0)=1;
            wi=wi./areai;
        case(3) %fld small disk
            wfull=dist{ind}.fld;
            wi=wfull(3,:);
            areai=wfull(5,:);
            areai(wi==0)=1;
            wi=wi./areai;
        case(4) %fld disk area
            wfull=dist{ind}.fld;
            wi=wfull(5,:);
            areai=dist{ind}.cellsize;
            areai(wi==0)=1;
            wi=wi./areai;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        case(5) %fld number endosomes
            wi=dist{ind}.fenum;
        case(6) %fld size endosomes
            wi=dist{ind}.fearea;
        case(7) %fld area endosomes/ cell area
            areai=(dist{ind}.fearea).*(dist{ind}.fenum);
            celli=dist{ind}.cellsize;
            wi=areai./celli;
        case(8) %area/perimeter
            wi=dist{ind}.fcirc;
        case(9) %coloc as fraction of fluid
            colci=dist{ind}.colc;
            areai=(dist{ind}.fearea).*(dist{ind}.fenum);
            colci(areai==0)=0;
            areai(colci==0)=1;
            wi=colci./areai;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        case(10) %tfr large
            wfull=dist{ind}.tfr;
            wi=wfull(1,:);
            areai=dist{ind}.cellsize;
            areai(wi==0)=1;
            wi=wi./areai;
        case(11) %tfr medium
            wfull=dist{ind}.tfr;
            wi=wfull(2,:);
            areai=wfull(4,:);
            areai(wi==0)=1;
            wi=wi./areai;
        case(12) %tfr small
            wfull=dist{ind}.tfr;
            wi=wfull(3,:);
            areai=wfull(5,:);
            areai(wi==0)=1;
            wi=wi./areai;
        case(13) %tfr disk
            wfull=dist{ind}.tfr;
            wi=wfull(5,:);
            areai=dist{ind}.cellsize;
            areai(wi==0)=1;
            wi=wi./areai;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        case(14) %ratio large
            wfull=dist{ind}.tfr;
            wi=wfull(1,:);
            areai=dist{ind}.surf;
            areai=areai(1,:);
            areai(wi==0)=1;
            wi=wi./areai;
        case(15) %ratio medium
            wfull=dist{ind}.tfr;
            wi=wfull(2,:);
            areai=wfull(4,:);
            areai(wi==0)=1;
            wi=wi./areai;
            si=dist{ind}.surf;
            areai=dist{ind}.cellsize;
            si=si./areai;
            si(wi==0)=1;
            wi=wi./si;
        case(16) %ratio small
            wfull=dist{ind}.tfr;
            wi=wfull(3,:);
            areai=wfull(5,:);
            areai(wi==0)=1;
            wi=wi./areai;
            si=dist{ind}.surf;
            areai=dist{ind}.cellsize;
            si=si./areai;
            si(wi==0)=1;
            wi=wi./si;
        case(17) %okt9
            wi=dist{ind}.surf;
            areai=dist{ind}.cellsize;
            wi=wi./areai;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        case(18) %tfr num ends
            wi=dist{ind}.tenum;
        case(19) %tfr size ends
            wi=dist{ind}.tearea;
        case(20) %tfr area ends/cell area
            areai=(dist{ind}.tearea).*(dist{ind}.tenum);
            celli=dist{ind}.cellsize;
            wi=areai./celli;
        case(21) %tfr area/perim
            wi=dist{ind}.tcirc;
        case(22) %tfr colc
            colci=dist{ind}.colc;
            areai=(dist{ind}.tearea).*(dist{ind}.tenum);
            colci(areai==0)=0;
            areai(colci==0)=1;
            wi=colci./areai;
        case(23) %cell size
            wi=dist{ind}.cellsize;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    end

    wi=sort(wi);
    wcheck=(1:length(wi))/length(wi);
    wi=wi(find(wcheck>=wc1 & wcheck<=wc2));    
    ws=(wi-mean(wi))/(std(wi)+eps);    
    
    sset(i).dat=sort(ws);
    
end
