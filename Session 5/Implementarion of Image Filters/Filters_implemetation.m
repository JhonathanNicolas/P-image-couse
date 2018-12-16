lena = 'lena.jpg';
A = imread(lena);
%A is a single channel image
A = rgb2gray(A);
%Generate a averaging filter
h_average =  fspecial('average',3);

%Generate a gaussian filter
h_gaussian = fspecial('gaussian',3,0.5);

A_average = imfilter(A,h_average);
A_gaussian = imfilter(A,h_gaussian);
A_median = medfilt2(A);

subplot(2,2,1), imshow(A), title('Original Image')
subplot(2,2,2), imshow(A_average), title('Averaging Filtered Image')
subplot(2,2,3), imshow(A_gaussian), title('Gaussian Filtered Image')
subplot(2,2,4), imshow(A_median), title('Median Filtered Image')

