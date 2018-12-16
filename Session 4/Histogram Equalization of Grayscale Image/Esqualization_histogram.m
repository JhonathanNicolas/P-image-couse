pic = 'test1.jpg';
A =imread(pic);

% Convert into Grayscale
A_gray = rgb2gray(A);

%Histogram Equalization of A_gray
A_histeq =  histeq(A_gray);

%plots
subplot(2,2,1), imshow(A_gray), title('Original Image');
subplot(2,2,2), imshow(A_histeq), title('HE Image');
subplot(2,2,3), imhist(A_gray), title('Histogram of  A_gray');
subplot(2,2,4), imhist(A_histeq), title('Histogram of HE A_gray');

