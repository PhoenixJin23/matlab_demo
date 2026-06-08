%分别读取高斯噪声图像“gaussian.tif”和
%椒盐躁声图像“salt & pepper.tif”，
% 然后（a）调用图像增强（均值滤波）函数，设置相关参数，再输出处理后的图像；
% （b）调用图像增强（中值滤波）函数，设置相关参数，再输出处理后的图像。

I_gaussian = imread('gaussian.tif');
I_gaussian = im2gray(I_gaussian);
I_salt = imread('salt & pepper.tif');
I_salt = im2gray(I_salt);

h_mean = fspecial('average',[3 3]);
I_gaussian_mean = imfilter(I_gaussian,h_mean);
I_salt_mean = imfilter(I_salt,h_mean);

I_gaussian_med = medfilt2(I_gaussian,[3 3]);
I_salt_med = medfilt2(I_salt,[3 3]);

figure(1)
subplot(2,2,1);imshow(I_gaussian);title('原始高斯噪声图');
subplot(2,2,2);imshow(I_gaussian_mean);title('高斯噪声-均值滤波');
subplot(2,2,3);imshow(I_gaussian_med);title('高斯噪声-中值滤波');

figure(2)
subplot(2,2,1);imshow(I_salt);title('原始椒盐噪声图');
subplot(2,2,2);imshow(I_salt_mean);title('椒盐噪声-均值滤波');
subplot(2,2,3);imshow(I_salt_med);title('椒盐噪声-中值滤波');