object = vision.VideoFileReader('Wildlife.wmv'); % L� um video
%info, step, isDone --> m�tricas
S = info(object) %indfor,a~pes do video
frame_rate = S.VideoFrameRate % Extra um dos parametros da informa��o do video
