%Read the image
A = imread('lena.jpg');

%Convert into grayscale
A_gray = rgb2gray(A);

%Sobel ED
A_sobel = edge(A_gray,'sobel');

%Prewiit ED
A_prewitt = edge(A_gray,'prewitt');

%canny ED
A_canny = edge(A_gray,'canny');

%plotting the results
subplot(2,2,1), imshow(A);
subplot(2,2,2), imshow(A_sobel);
subplot(2,2,3), imshow(A_prewitt);
subplot(2,2,4), imshow(A_canny);