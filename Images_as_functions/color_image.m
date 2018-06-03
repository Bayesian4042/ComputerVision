%Image is 2D matrix. Mathematically Images are functions which gives the intensity value at
%position. The gray image has two dim (r x c), while colored images have
%dim (r x c x channels). Channels are RGB.

img = imread('peppers1.jpg');

% to read only green channel
img_green = img(:,:,2); % where the pixels have high value(bright) have more green color.
imshow(img_green);
imshoe(img);
