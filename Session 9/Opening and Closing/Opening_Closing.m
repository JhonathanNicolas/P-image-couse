A = imread('binaryImg1.jpg');
A_gray = rgb2gray(A);
size(A_gray)
se = strel('square',50);
strel('square',5)
strel('disk',4)
A_open = imopen(A_gray,se);
A_close = imclose(A_gray,se);
subplot(1,3,1), imshow(A_gray), title('Gray');
subplot(1,3,2), imshow(A_open), title('Open');
subplot(1,3,3), imshow(A_close), title('Close');