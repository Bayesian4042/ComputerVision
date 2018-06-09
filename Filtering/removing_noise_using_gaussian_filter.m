% Remove noise using Gaussian Filter

%load image
im = imread('panda.jpeg');
imshow(im);

%add noise

noise_sigma = 25;
noise = randn(size(im)).* noise_sigma ;
noisy_img = single(im) + single(noise) ;
imshow(noisy_img);


% create gaussian filter

fsize = 11;
sigma = 2;

filter = fspecial('gaussian', fsize, sigma);

%apply it to noisy image
smoothed_image = imfilter(noisy_img, filter);
imshow(smoothed_image);

