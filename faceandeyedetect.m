%CODEBY:-VINAYTHUTE
% face and eye detection from Image
%Get FaceDetector Object
faceDetector = vision.CascadeObjectDetector;
I = imread('s.jpg');%read image
bboxes = faceDetector(I);
IFaces = insertObjectAnnotation(I,'rectangle',bboxes,'Face');   
figure
imshow(IFaces)
title('Detected faces');
% Get EyeDetector Object
EyeDetector= vision.CascadeObjectDetector('EyePairSmall');
EyeBBOX =step(EyeDetector,I);
% Annotate these eyes on the top of the image
imannotateeye = insertObjectAnnotation(I,'rectangle',EyeBBOX,'Eye');
% Getting the last box and crop
EyeBBOX=EyeBBOX(1,:);
imeye3 = imcrop(I,EyeBBOX);
figure
imshow(imannotateeye)
