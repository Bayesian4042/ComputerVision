im = imread('panda.jpeg');
disp(size(im));
%im = flip(im,2);
h = fspecial('sobel');
imshow(im);
%imagesc(h);
%surf(h);
outim = imfilter(im,h);
imshow(outim);
%disp(size(outim));