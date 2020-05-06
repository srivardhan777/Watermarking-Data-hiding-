% Hiding image code
clc;
clear all;
close all;
a = imread("original.png"); % image to be compressed
b = imread("cameraman.tif"); % image to hide in another image
subplot(1,2,1);
imshow(a); % original image
title("Original image");
sgtitle("Image Hiding",'Color','blue');
ba = imbinarize(a); % conversion of image into binary
[m,n]=size(ba);
a1 = [ba, zeros(256-m,256-n);zeros(256-m,256)]; % zero padding
dct_b = my_dct2(double(b));
sum = double(a1) + dct_b; % addition of two images
idct_sum = my_idct2(double(sum));
idct_sum = uint8(idct_sum);
subplot(1,2,2)
imshow(idct_sum);
title('Hidden image');
imwrite(idct_sum,'hidden.png');