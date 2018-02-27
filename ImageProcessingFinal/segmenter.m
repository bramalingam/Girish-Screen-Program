clear all;close all;

reader = bfGetReader('/Users/bramalingam/Google Drive/Plate6/24 HRS/MFGTMP_141029170001/MFGTMP_141029170001_A01f00d0.C01');

dapi = bfGetPlane(reader, 1);
gfp = bfGetPlane(reader, 2);

I = gfp;

hy = fspecial('sobel');
hx = hy';
Iy = imfilter(double(I), hy, 'replicate');
Ix = imfilter(double(I), hx, 'replicate');
gradmag = sqrt(Ix.^2 + Iy.^2);