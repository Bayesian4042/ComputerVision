% Gaussian Noise

img = imread('bicycle.jpeg');
sigma =1 ; % as we increase sigma. more noise being added to the image.
noise = randn(size(img)).*sigma ;
output = double(img) + noise;
imshow(output);