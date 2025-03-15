%Crystallise takes an image, row and column vector and outputs 'crystal' an
%image
%inputs: image, row, column
%outputs: crystal
function [crystal] = Crystallise(image,row,column)
%r is height of image, c is width of image
r = height(image);
c = width(image);
%create 3d empty matrix crystal format uint8
crystal = zeros(r,c,3, 'uint8');
%for i = 1 to r
for i = 1:r
    %for j = 1 to c
    for j = 1:c
        %array = closest pixel
        array = FindClosest([i,j], row, column);
        %crystal(i,j,:) = image(array(1) array(2),:)
        crystal(i,j,:) = image(array(1), array(2),:);
    end
end
%Author: Will Jin