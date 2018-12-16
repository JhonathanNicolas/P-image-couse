lena = 'lena.jpg';
A = imread(lena);
A_gray = rgb2gray(A);
imhist(A_gray) % Histograma da escala cinza da imagem
imhist(A_gray,128) % Esse parametro diminui a densidade do histograma
imhist(A_gray,32)
%Separando os canais RGB-
R = A(:,:,1);
G = A(:,:,2);
B = A(:,:,3);
%------------------------
subplot(1,3,1), imhist(R), title('R');
subplot(1,3,2), imhist(G), title('G');
subplot(1,3,3), imhist(B), title('B');



