pic = 'test1.jpg'
A = imread(pic);

%get the filter
h_gaussian = fspecial('gaussian');
h_average = fspecial('average');

%Perform filtering 
B_gaussian = imfilter(A,h_gaussian);
B_average = imfilter(A, h_average);

%Perorm Media filtering
A_gray = rgb2gray(A);
B_median = medfilt2(A_gray);

%plot
figure, subplot(2, 2, 1), imshow(A), title('Original image with Salt & Pepper noise');
subplot(2, 2, 2), imshow(B_gaussian), title('Input image filtered using Gaussian filter');
subplot(2, 2, 3), imshow(B_average), title('Input image filtered using Average filter');
subplot(2, 2, 4), imshow(B_median), title('Input image filtered using Median filter');
