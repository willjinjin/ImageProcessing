%Greyscale takes an rgb image and converts it to black and white
%inputs: rgb image 
%outputs: monochrome image
function [greyimg] = Greyscale(image)
%converts to double format
image = double(image);
%r = height of image, c = width of image
r = height(image);
c = width(image);
%create greyimg, an empty array equal in size to image
greyimg = zeros(r, c);
%for i equals 1 to r
for i = 1:r
    %for j equals 1 to c
    for j = 1:c
        %set greyimg row i and column j equal to image(i,j,k) with ratio
        %k(3:5:1)
        greyimg(i,j) = round((3 * image(i,j,1) + 5 * image(i,j,2) + image(i,j,3))/9);
    end
end
%change greyimg to uint8 format
greyimg = uint8(greyimg);
%Author: Will Jin