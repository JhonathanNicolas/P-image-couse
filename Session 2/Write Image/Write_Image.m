A = imread('lena.jpg');
imwrite(A,'lena_copy.jpg'); %Escreve uma nova imagem
imshow('lena_copy.jpg');
B =  imtranslate(A, [5 15]); % desloca a imagem -> "transladou" a imagem
imwrite(B, 'lena_translated.jpg'); % Salva a imagem transladada