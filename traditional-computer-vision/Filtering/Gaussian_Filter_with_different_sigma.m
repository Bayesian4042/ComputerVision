%Smoothing with Gaussian 
fsize = 31;
for sigma = 1:3:10
    h = fspecial('gaussian',fsize, sigma);
    out = imfilter(im, h);
    imshow(out);
    pause;
end 
 