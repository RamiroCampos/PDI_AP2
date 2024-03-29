img12 = imread("Fig0312(a)(kidney).tif");

img12modb = img12;
for i = 1:size(img12,1)
    for j = 1:size(img12,2)
        if (img12(i,j) > 150)
            img12modb(i,j) = 240;
        else
            img12modb(i,j) = 0;
        endif
    endfor
endfor

imshow(img12modb,[0,255])
print -djpg 3_12b.jpg

img12modc = img12;
for i = 1:size(img12,1)
    for j = 1:size(img12,2)
        if (img12(i,j) > 90 &&img12(i,j) < 150 )
            img12modc(i,j) = 0;
        endif
    endfor
endfor

imshow(img12modc,[0,255])
print -djpg 3_12c.jpg
