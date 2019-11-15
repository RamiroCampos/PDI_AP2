img14 = imread("Fig0314(a)(100-dollars).tif");

img14b1 = bitget(img14,1);
imshow(img14b1)
print -djpg 3_14b.jpg

img14b2 = bitget(img14,2);
img14b2 = img14b2*(2^1);
imshow(img14b2)
print -djpg 3_14c.jpg

img14b3 = bitget(img14,3);
img14b3 = img14b3*(2^2);
imshow(img14b3 )
print -djpg 3_14d.jpg

img14b4 = bitget(img14,4);
img14b4 = img14b4*(2^3);
imshow(img14b4 )
print -djpg 3_14e.jpg

img14b5 = bitget(img14,5);
img14b5 = img14b5*(2^4);
imshow(img14b5 )
print -djpg 3_14f.jpg

img14b6 = bitget(img14,6);
img14b6 = img14b6*(2^5);
imshow(img14b6 )
print -djpg 3_14g.jpg

img14b7 = bitget(img14,7);
img14b7 = img14b7*(2^6);
imshow(img14b7 )
print -djpg 3_14h.jpg

img14b8 = bitget(img14,8);
img14b8 = img14b8*(2^7);
imshow(img14b8 )
print -djpg 3_14i.jpg
