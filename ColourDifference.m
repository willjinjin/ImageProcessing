%takes two uint8 arrays and calculates the colour difference between each
%pixel in the array. stores difference in new array
%inputs: a1, a2 
%outputs: difference
function [difference] = ColourDifference(a1,a2)
%r = height of image, c = width of image
r = height(a1);
c = width(a1);
%changes a1 and a2 to double format
a1 = double(a1);
a2 = double(a2);
%create empty array size r, c
difference = zeros(r, c);
%for i equals 1 to r
for i = 1:r
    %for j equals 1 to c
    for j = 1:c
        %calculates colour difference
        difference(i,j) = sqrt((a1(i,j,1)-a2(i,j,1))^2 + (a1(i,j,2)-a2(i,j,2))^2 + (a1(i,j,3)-a2(i,j,3))^2);       
    end
end
end
%Author: Will Jin