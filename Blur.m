%Blur takes an image and intensity and blurs the image to that intensity
%if intensity = 3, blur would take the 3x3 surrounding elements, average,
%and assign to a pixel in blurred
%inputs: image, intensity
%outputs: blurred
function [blurred] = Blur(image,intensity)
%r = height of image, c = width of image, q = faces of array
r = height(image);
c = width(image);
q = 1;
% if the array has 3 dimensions, assign 3 to q
if ndims(image) == 3
    q = 3;
end
%region is area around current pixel
region = (intensity-1) / 2;
%create empty array blurred
blurred = zeros(r, c, 'uint8');
%for i = 1 to r
for i = 1:r
    %for j = 1 to c
    for j = 1:c
        %for k = 1 to q
        for k = 1:q
            %assign values to top,bot,left,right
            top = i - region;
            bot = i + region;
            left = j - region;
            right = j + region;
            %if top/bot/left/right exceed the index of array, set to
            %appropriate index
            if top < 1
                top = 1;
            end
            if bot > r
                bot = r;
            end
            if left < 1
                left = 1;
            end
            if right > c
                right = c;
            end
            %blurred(i,j,k) = mean of image(top:bot, left:right, k) with
            %single value ignoring missing values
            blurred(i,j,k) = mean(image(top:bot, left:right, k), "all");
        end
    end
end
%Author: Will Jin