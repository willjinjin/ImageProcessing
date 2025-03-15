%Invert takes and image and inverts the rgb/mono values
%inputs: 2d/3d array (image)
%outputs: inverted array (inverted)
function [inverted] = Invert(image)
%r = height of image, c = width of image, q = faces
r = height(image);
c = width(image);
q = 1;
%if image is a 3d array, set q to 3
if ndims(image) == 3
    q = 3;
end
%create empty array size r, c
inverted = zeros(r, c, 'uint8');
%for i equals 1 to r
for i = 1:r
    %for j equals 1 to c
    for j = 1:c
        %for k equals 1 to q
        for k = 1:q
            %inverted(i,j,k) equals 255 subtract image(i,j,k) 
            %this inverts the colour
            inverted(i,j,k) = 255 - image(i,j,k);
        end
    end
end
%Author: Will Jin
