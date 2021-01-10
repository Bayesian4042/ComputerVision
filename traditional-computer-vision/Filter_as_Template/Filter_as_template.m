% Find template 2D
% NOTE: Function definition must be the very first piece of code here!


% Test code:
tablet = imread('image_temp.jpeg');
tablet = imresize(tablet, [540,540]);
tablet = rgb2gray(tablet);
%imshow(tablet);
glyph = tablet(150:270, 260:300);
%imshow(glyph);
% 
[y x] = find_template_2D(glyph, tablet);
disp([y x]); % should be the top-left corner of template in tablet
temp = insertShape(tablet,'Rectangle',[260 150 40 120],'LineWidth',5);
imshow(temp);

function [yIndex xIndex] = find_template_2D(template, img)
%     % TODO: Find template in img and return [y x] location
%     % NOTE: Turn off all output from inside the function before submitting!
        c = normxcorr2(template, img);
        [yRaw xRaw] = find(c == max(c(:)));
        yIndex = yRaw - size(template,1)+1;
        xIndex = xRaw - size(template,2)+1;
        %imshow(c);
end


