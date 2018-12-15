A = imread('lena.jpg');
size(A)
A_gray = rgb2gray(A); % Converte o espaço de cores RGB para escala cinza
size(A_gray)
imshow(A)
subplot(1,2,1), imshow(A), title('RGB IMAGE')
subplot(1,2,2), imshow(A_gray), title('Gray Scale Image')
imwrite(A_gray,'Lena_GrayScale.jpg')