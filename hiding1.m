function [idct_sum] = hiding1(a, b)
subplot(1,2,1);
imshow(a); % original image
title("Original image");
sgtitle("Image Hiding",'Color','blue');
ba = imbinarize(a); % conversion of image into binary
[m,n]=size(ba);
a1 = [ba, zeros(256-m,256-n);zeros(256-m,256)]; % zero padding
dct_b = dct2(double(b));
sum = double(a1) + dct_b; % addition of two images
idct_sum = idct2(double(sum));
idct_sum = uint8(idct_sum);
subplot(1,2,2)
imshow(idct_sum);
title('Hidden image');
imwrite(idct_sum,'hidden.png');
end