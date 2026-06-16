%% 基于MATLAB的硬币计数测试脚本
clear; clc; close all;

% 1. 读取图像 (请确保图片在当前文件夹，或替换为绝对路径)
I = imread('coins1.png'); % <--- 这里改一下文件名

% 2. 预处理
I_gray = rgb2gray(I);
I_filter = medfilt2(I_gray, [5 5]); % 中值滤波，去除金属反光噪点

% 3. 二值化处理 (关键步骤)
% 使用大津法自动确定阈值
level = graythresh(I_filter);
bw = imbinarize(I_filter, level);

% 【解决你提到的问题】：判断是否需要反相
% 原理：通常硬币是孤立的，背景是连通的。如果四个角大多是白色，说明背景被误判为1了
corner_pixels = [bw(1,1), bw(1,end), bw(end,1), bw(end,end)];
if sum(corner_pixels) >= 2
    bw = ~bw; % 执行反相，让硬币变白，背景变黑
end

% 4. 形态学处理
bw = imfill(bw, 'holes'); % 填充硬币内部由于反光产生的黑洞
se = strel('disk', 10);   % 创建一个半径为10的圆形算子
bw = imopen(bw, se);      % 开运算：去掉背景里的细小亮斑

% 5. 连通域计数
[L, num] = bwlabel(bw);

% 6. 结果可视化展示
figure;
subplot(1,2,1); imshow(I); title('原始图像');
subplot(1,2,2); imshow(bw); title(['二值化结果，检测到数量：', num2str(num)]);

% 在原图上圈出硬币并编号
stats = regionprops(L, 'Centroid');
hold on;
for i = 1:length(stats)
    centroid = stats(i).Centroid;
    plot(centroid(1), centroid(2), 'r*');
    text(centroid(1)+10, centroid(2)+10, num2str(i), 'Color', 'yellow', 'FontSize', 15, 'FontWeight', 'bold');
end
hold off;

fprintf('检测完成！共发现 %d 个目标。\n', num);
