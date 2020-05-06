function [p] = extract1(a ,b, m, n)

figure;
subplot(1,2,1);
imshow(a);
title("Hidden image");
dct_a = dct2(double(a));
dct_b = dct2(double(b));
c = dct_a - dct_b;
subplot(1,2,2)
sgtitle('Image Extraction','color','blue');
p = uint8(255 * c);
imshow(p(1:m,1:n));
title('Extracted image');
end