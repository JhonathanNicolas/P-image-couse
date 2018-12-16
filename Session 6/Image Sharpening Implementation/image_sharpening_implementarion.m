pic = 'test1.jpg';
A = imread(pic);
A_sharpen_1 = imsharpen(A,'Amount', 0.5);
A_sharpen_2 = imsharpen(A,'Amount', 1.0);
A_sharpen_3 = imsharpen(A,'Amount', 1.5);


% Display the images side-by-side
figure, subplot(2, 2, 1), imshow(A), title('Original image');
subplot(2, 2, 2), imshow(A_sharpen_1), title('Sharpened image: Amount 0.5');
subplot(2, 2, 3), imshow(A_sharpen_2), title('Sharpened image: Amount 1.0');
subplot(2, 2, 4), imshow(A_sharpen_3), title('Sharpened image: Amount 1.5');