%FindClosest takes a  1by2 pixel array, 1byn row array, and 1byn column array
%finds the closest value in the row and column array to the pixel
%inputs: pixel, rcoord, ccoord
%outputs: closest
function [closest] = FindClosest(pixel,rcoord, ccoord)
%l is hte length of rcoord
l = numel(rcoord);
%calculates distance between first elements and pixel, stores in closestdistance
closestdistance = sqrt((rcoord(1)-pixel(1))^2 + (ccoord(1)-pixel(2))^2);
%closest(1) set to rcoord(1)
closest(1) = rcoord(1);
%closest(2) set to ccoord(1)
closest(2) = ccoord(1);
%for i = 1 to l
for i = 1:l
    %set distance to euclidean distance
    distance = sqrt((rcoord(i)-pixel(1))^2 + (ccoord(i)-pixel(2))^2);
    %if distance is smaller than closest distance, set closest(1 2) to
    %rcoord(i) and ccoord(i)
    if distance < closestdistance
        closestdistance = distance;
        closest(1) = rcoord(i);
        closest(2) = ccoord(i);
    end
end
%Author: Will Jin