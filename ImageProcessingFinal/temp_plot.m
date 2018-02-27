
for i=1:30

    filtered_img=imtophat(gfp1,strel('disk',i));
    
    c1=imbinarize(filtered_img,graythresh(filtered_img));
    [aa ii] = bwlabel(c1);
    disp(ii)
end