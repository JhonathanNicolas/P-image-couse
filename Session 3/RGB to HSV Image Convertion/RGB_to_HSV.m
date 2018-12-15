A = imread('lena.jpg')
R = A(: ,: ,1); % Captura apenas o canal Vermelho
G = A(:, :, 2); % '' '' '' '' '' '' '' '' '' Verde
B = A(:, :, 3);% '' '' '''' '' '''' '' '''' 'Azul

subplot(1,3,1), imshow(R), title('R') 
subplot(1,3,2), imshow(G), title('G') 
subplot(1,3,3), imshow(B), title('B') 

A_hsv = rgb2hsv(A); %  Converte A em RGB para A em HSV
size(A_hsv);

H = A_hsv(: ,: ,1); % Captura ape o canal de tonalidade
S = A_hsv(: ,: ,2); % '''''''''''''''''''''''Saturação
V = A_hsv(: ,: ,3); %''''''''''''''''''''''''Valor


figure, subplot(1,3,1), imshow(H), title('H')
subplot(1,3,2), imshow(S), title('S')
subplot(1,3,3), imshow(V), title('V')


figure, subplot(1,2,1), imshow(A), title('RGB')
subplot(1,2,2), imshow(A_hsv), title('HSV')
