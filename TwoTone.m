%TwoTone takes an image and a two 2d arrays with 2 elements
%one array contains two colours, the other contains weighting
%inputs: image, colours, weighting
%outputs: ttimg (two tone image)
function [ttimg] = TwoTone(image,colours, weighting)
%set r = to height of image, set c = to width of image
r = height(image);
c = width(image);
%assign colours(1,1,:) to col1 and colours(1,2,:) to col2
colA = colours(1,1,:);
colB = colours(1,2,:);
%assign weighting(1,1,:) to low and weighting(1,2,:) to high
low = weighting(1,1,:);
high = weighting(1,2,:);
%create empty 3d array ttimg with rows r and columns c, uint8 format
ttimg = zeros(r,c, 3, 'uint8');
%for i = 1 to r
for i = 1:r
    %for j = 1 to c
    for j = 1:c
        %variables lowdiff and highdiff store difference between current
        %pixel and low/high
        lowdiff = ColourDifference(image(i,j,:), low);
        highdiff = ColourDifference(image(i,j,:), high);
        %if lowdiff is less than or equal to highdiff, assign colourA to
        %ttimg(i,j,:)
        if lowdiff <= highdiff
            ttimg(i,j,:) = colA;
            %else set ttimg(i,j,:) to col2
        else
            ttimg(i,j,:) = colB;
        end
    end
end
%Author: Will Jin