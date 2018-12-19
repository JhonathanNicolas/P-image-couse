A = imread('lena.jpg');

%generating Noisy Image
B_gaussian = imnoise(A, 'gaussian');
B_speckle = imnoise(A,'speckle');
B_saltpepper = imnoise(A,'Salt & pepper');

figure, subplot(2, 2, 1), imshow(A), title('Original read image');
subplot(2, 2, 2), imshow(B_gaussian), title('Original image with added Gaussian noise');
subplot(2, 2, 3), imshow(B_speckle), title('Original image with added Speckle noise');
subplot(2, 2, 4), imshow(B_saltpepper), title('Original image with added Salt & Pepper noise');