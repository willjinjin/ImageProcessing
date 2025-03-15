%Sketch takes an image and intensity
%inputs: image, intensity
%outputs: sketch
function [sketch] = Sketch(image,intensity)
%assigns Greyscale(image) to grey
grey = Greyscale(image);
%assigns Invert(grey) to image
image = Invert(grey);
%assigns Blur(image, intensity) to image
image = Blur(image, intensity);
%r is number of row, c is number of columns
r = height(image);
c = width(image);
%create empty matrix sketch
sketch = zeros(r,c);
%converts image and grey to double
image = double(image);
grey = double(grey);
%for i = 1 to r
for i = 1:r
    %for j = 1 to c
    for j = 1:c
        %assign grey(i,j) to back
        back = grey(i,j);
        %if back = 255, set sketch(i,j) to 255, next iteration
        if back == 255
            sketch(i,j) = 255;
            continue
        end
        %colour dodge image(i,j) and back to get sketch(i,j)
        sketch(i,j) = 255*image(i,j) / (255 - back);
    end
end
%change sketch to uint8 format
sketch = uint8(sketch);
%Author: Will Jin