n = 256;
#função para a equalização do histograma
function eqhist = histequi(Img, bit = 8)
  L = (2^bit)-1;
  MN = size(Img)(1)*size(Img)(2);
  pdf = zeros(256,1);
  for i = 0:255
      pdf(i+1) = sum(Img(:)==i);
  end
  eqhist = zeros(size(Img));
  si = zeros(size(pdf)(1),1);
  pdf = pdf*L/(sum(pdf));
  for i = 1:size(pdf)(1)
    if(i==1) si(i) = pdf(1);
    else si(i) = si(i-1) + pdf(i);
    endif
  endfor
  si = round(si);    
  for i = 1:size(Img)(1)
    for j = 1:size(Img)(2)
      eqhist(i,j) = si(Img(i,j)+1);
    endfor
  endfor
end

img20a = imread("Fig0320(2)(2nd_from_top).tif");
img20b = imread("Fig0320(1)(top_left).tif");
img20c = imread("Fig0320(4)(bottom_left).tif");
img20d = imread("Fig0320(3)(third_from_top).tif");

  #Equalização da imagem a)
eqimg20a = histequi(img20a);
imshow(eqimg20a,[0,255])
print -djpg 3_20a.jpg

  #Equalização da imagem b)
eqimg20b = histequi(img20b);
imshow(eqimg20b,[0,255])
print -djpg 3_20b.jpg  

  #Equalização da imagem c)
eqimg20c = histequi(img20c);
imshow(eqimg20c,[0,255])
print -djpg 3_20c.jpg  

  #Equalização da imagem d)
eqimg20d = histequi(img20d);
imshow(eqimg20d,[0,255])
print -djpg 3_20d.jpg  
