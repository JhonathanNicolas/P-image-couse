%Read the image
A = imread('binaryImg1.jpg');

%Grayscale Conversion
A_gray = rgb2gray(A);

%Structuting elemet
se = strel ('disk',15);

%Erosion
A_erosion = imerode(A_gray, se);

%Dilaion
A_dilation = imdilate(A_gray,se);

subplot(1,3,1), imshow(A_gray), title('Grayscale Image');
subplot(1,3,2), imshow(A_erosion), title('Eroded Image');
subplot(1,3,3), imshow(A_dilation), title('Dilated Image');


