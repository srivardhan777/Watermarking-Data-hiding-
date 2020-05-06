clc;
clear all;
close all;
a = imread("Hidden.png");
b = imread("cameraman.tif"); % image hidden into it
subplot(1,2,1);
imshow(a);
title("Hidden image");
sgtitle("Image Extraction",'Color','blue');
dct_a = my_dct2(double(a));
dct_b = my_dct2(double(b));
c = dct_a - dct_b;
subplot(1,2,2)
sgtitle('Image Extraction','color','blue');
p = uint8(255 * c);
imshow(p(1:128,1:128));
title('Extracted image');