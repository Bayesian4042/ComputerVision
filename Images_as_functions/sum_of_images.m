% Add two images
dolphin = imread('dolphin.jpeg');
bicycle = imread('bicycle.jpeg');
dolphin = dolphin(:,1:275,:);
bicycle = bicycle(1:166,:,:);
disp(size(dolphin));
disp(size(bicycle));
summed = bicycle/2 + dolphin/2; % dim of both images should match.
%imshow(bicycle);
%imshow(dolphin);
imshow(summed);