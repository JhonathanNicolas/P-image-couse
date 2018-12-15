imshow('lena.jpg'); %% Comando para ler uma imagem
A = imread('lena.jpg'); %% Ler a imagem como uma "matriz" colocando na no workspace
size(A) % Mostra o tamanho da imagem e o número de canais
imshow(A)
figure, imshow(A) % figure cria uma nova janela
clse all % fecha tudo 
B = imresize(A,2) % Redimensiona A
size(B)
figure, imshow(A) % figure cria uma nova janela
C = imrotate(A,90); %Rotaciona A em 90 graus
C = imrotate(A,45); %Rotaciona A em 45 graus
