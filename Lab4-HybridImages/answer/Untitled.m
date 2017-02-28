clc; 

I1 = imread('feliz.jpg');
I2 = imread('malvada.jpg');

r =[235 50 300 300]; I1 = imcrop(I1,r);
r =[250 0 800 752]; I2 = imcrop(I2,r);

I1=imresize(I1,2.66);
r =[0 0 801 752]; I1 = imcrop(I1,r);

I1_LP = imfilter(I1, fspecial('gaussian',50,25));
I2_LP = imfilter(I2, fspecial('gaussian',25,25));

I2_HP = I2 - I2_LP;

h=I1_LP+I2_HP;