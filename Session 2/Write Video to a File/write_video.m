% vosopm.VideoFileReader, info, step isDone
% VideoWriter, writeVideo
readObject = vision.VideoFileReader('Wildlife.wmv');
writeObject = VideoWriter('Wildlife_copy'); %criando o arquivo para escrita

S = info(readObject); % Variavel para capturar as informações do video
frame_rate = S.VideoFrameRate % Guardar as informação do frame do video original
VideoWriter.FrameRate = frame_rate %Setar o frame rate do novo video com a mesma taxa do video original

open(writeObject) % Se não abrir o objeto poderemos apenas lê-lo e n escrever nele

%write Video-------------------
while ~isDone(readObject)
    frame = step(readObject);
    writeVideo(writeObject,frame);
end
%------------------------------

close(writeObject) %Fecha o objeto
release(readObject); %Tira o video da memoria