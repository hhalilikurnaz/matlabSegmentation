img=imread("boston night.jpg")


grayImg=rgb2gray(img); %RGB görüntüyü griye çevirir.

gamma=1/2; %Gama Değeri

gammaCorrected=imadjust(grayImg,[],[],gamma);

% 1 derece döndürme

rotatedImg=imrotate(gammaCorrected,-1,"bilinear","crop");

%unit8 formatına çevir

finalImg=im2uint8(rotatedImg);
imwrite(finalImg,'gray_precessed_image.png');

%sonucu göster
imshow(finalImg);
title('İşlenmiş Gri tonlamalı Görüntü');
imtool(img);
