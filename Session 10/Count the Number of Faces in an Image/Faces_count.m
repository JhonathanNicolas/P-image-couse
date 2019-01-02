%Read the image
A = imread('faces1.jpg');

%Get FaceDetector Object
FaceDetector = vision.CascadeObjectDetector();


%Use FaceDetector on A and get Faces
BBOX = step(FaceDetector,A);

%Annotate the f aces on the top of the image
B = insertObjectAnnotation(A, 'rectangle', BBOX, 'Face');
imshow(B), title('Detected Faces');

%Display the number of faces in a string
n = size(BBOX,1);
str = sprintf('The number of faces are = %d',n);
disp(str);