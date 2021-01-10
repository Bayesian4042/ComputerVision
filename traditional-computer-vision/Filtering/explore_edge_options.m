% Explore edge options


%% Load an image
img = imread('panda.jpeg');  % also available: peppers.png, mandrill.png
imshow(img);

%% TODO: Create a Gaussian filter
f_size = 21;
f_sigma = 3;
f = fspecial('gaussian',f_size,f_sigma);

%% TODO: Apply it, specifying an edge parameter (try different parameters)
output = imfilter(img,f,0); % other options : 'circular','copy','replicate','symetric'
imshow(output);