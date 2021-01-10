im  = ones(5,4);

im(:,1:2)= 10;
im(:,3:4) = 0;
im = flip(im,2);
disp(im);
h = ones(3,3);
h(:,2) = 0;
h(:,3)=-1;
disp(h)

outim = imfilter(im,h);
disp(outim);
imshow(outim);
disp(class(outim));