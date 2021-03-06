%Read the Image
A = imread('binaryImg1.jpg');

%Grayscale Image
A_gray = rgb2gray(A);

%Structuring element
se = strel('disk',5);
A_erode = imerode(A_gray,se);

%Outline
A_outline = A_gray - A_erode;

imshowpair(A_gray,A_outline, 'montage'); 