pic = 'test1.jpg';
A = imread(pic);

%Meu metodo------------------------------------
count = 3;

%A ideia aqui é equalizar cada canal RGB
while count >= 1
 
A_eq( : ,:, count) = histeq(A( : ,:, count));
count = count-1;    
end    
%----------------------------------------------
subplot(2,1,1),imshow(A_eq), title('Imagem Equalizada');
subplot(2,1,2),imshow(A), title('Imagem Não Equalizada');
figure,subplot(2,3,1),imhist(A_eq( : ,:,1)), title('R Equalizada');
subplot(2,3,2),imhist(A_eq( : ,:,2)), title('G Equalizada');
subplot(2,3,3),imhist(A_eq( : ,:,3)), title('B Equalizada');
subplot(2,3,4),imhist(A( : ,:,1)), title('R Não Equalizada');
subplot(2,3,5),imhist(A( : ,:,2)), title('G Não Equalizada');
subplot(2,3,6),imhist(A( : ,:,3)), title('B Não Equalizada');

%-------------------------------------------------------------------

%Metodo do teacher--------------------------------------------------
A_hsv = rgb2hsv(A);
A_v = A_hsv(:,:,3);
A_v = histeq(A_v);
A_hsv(:,:,3) = A_v;
A = hsv2rgb(A_hsv);
figure,subplot(1,2,1),imshow(A)
A = imread(pic);
subplot(1,2,2), imshow(A);
%------------------------------------------------------------------


