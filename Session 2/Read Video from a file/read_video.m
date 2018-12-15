object = vision.VideoFileReader('Wildlife.wmv'); % Lê um video
%info, step, isDone --> métricas
S = info(object) %indfor,a~pes do video
frame_rate = S.VideoFrameRate % Extra um dos parametros da informação do video
