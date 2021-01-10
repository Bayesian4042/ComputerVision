im = imread('panda.jpeg');
fsize = 31;
sigma = 5;
h = fspecial('gaussian',fsize, sigma);
%surf(h);
%imagesc(h);
outim = imfilter(im,h);
imshow(outim);
