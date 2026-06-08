%在 matlab 环境中，首先读取图像“cameraman”，然后调用图像边缘检测（ Sobel、 Canny边缘算子）函数，
% 设置相关参数，再输出处理后的图像。

I = imread('cameraman.tif');
I = im2gray(I);

BW_sobel = edge(I,'sobel');
BW_canny = edge(I,'canny'); 

figure
subplot(1,3,1)
imshow(I)
title('原始图像')

subplot(1,3,2)
imshow(BW_sobel)
title('Sobel 边缘检测')

subplot(1,3,3)
imshow(BW_canny)
title('Canny 边缘检测')