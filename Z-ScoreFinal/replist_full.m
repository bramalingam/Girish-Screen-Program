function [ivec1 ivec2 ivec3]=replist_full()

replist;
ivec1=1:300;

for i=1:300
    
    ff1=find(rep2==i);
    ff2=find(rep3==i);
    
    ivec2(i)=rep1(ff1);
    ivec3(i)=rep1(ff2);
    
end