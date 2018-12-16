pic = 'lena.jpg';
A = imread(pic);
A_guided_filter = imguidedfilter(A);
imshowpair(A,A_guided_filter,'Montage');