clear all;
close all;
clc
object = vision.VideoFileReader('Wildlife.wmv');
%Using Info
S =info(object);
frame_rate = S.VideoFrameRate;
%Using Step and isDone

%L�gica para reproduzir videos---------------------------------
while ~isDone(object) %Looop /para identificar se o video chegou ao fim 
    frame  = step(object); % a fun��o step avan� um frame no video 
    imshow(frame)% mostra o frame com uma imagem
end
%-------------------------------------------------------------
object = vision.VideoFileReader('Wildlife.wmv', 'ImageColrSpace', 'intesity');
release(object);