% crop image

img = imread('pepper.jpg');
cropped = img(110:310,10:160,:);
imshow(cropped);