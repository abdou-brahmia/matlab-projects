clear all;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% image 1 boat 
img1 =imread('C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\boat.png');
imwrite(img1,'C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\boat1.jpeg','jpeg');
img11 =imread('C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\boat.png');
figure(1)
figure('Name','boat.png ');
imshow(img1)
figure(2)
figure('Name','boat.jpeg ');
imshow(img11)


figure(3)
figure('Name','histogramme boat ');
plot(imhist(img1(:,:,1)) ,'red' )


disp('entropy image 1')
entrp1=entropy(img1);
disp(entrp1)
variance1 = var(double(img1(:)));
disp('variance image 1')
disp(variance1)

disp('ecart type image1')
ecart_type1=std('C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\boat.png')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  image 2 mandrill



img2 =imread('C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\mandrill.png');
imwrite(img2,'C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\mandrill1.jpeg','jpeg');
img22 =imread('C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\mandrill1.jpeg');


figure(4)
figure('Name','mandrill.png ');
imshow(img2)


figure(5)
figure('Name','mandrill.jpeg ');
imshow(img22)


figure(6)
figure('Name','histogramme mandrill ');
plot(imhist(img2(:,:,1)) ,'green' )



disp('entropy image 2')
entrp2=entropy(img2);
disp(entrp2)
variance2 = var(double(img2(:)));
disp('variance image 2')
disp(variance2)
disp('ecart type image2')
ecart_type2=std('C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\mandrill.png')



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% image 3 lina 
img3 =imread('C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\lena.tif');
imwrite(img3,'C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\lena1.jpeg','jpeg');
img33 =imread('C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\lena1.jpeg');


figure(7)
figure('Name','lena.png ');
imshow(img3)


figure(8)
figure('Name','lena.jpeg ');
imshow(img33)


figure(9)
figure('Name','histogramme lena ');
plot(imhist(img3(:,:,1)) ,'blue' )







disp('entropy image 3')
entrp3=entropy(img3);
disp(entrp3)
variance3 = var(double(img3(:)));
disp('variance image 3')
disp(variance3)
disp('ecart type image 3')
ecart_type3=std('C:\Users\imane\Documents\MATLAB\TP_TINF\TP1\lena.tif')




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



moyenne1 = mean(mean(img1(:,:,1)));
disp('la moyenne   de image 1 est :  ')
disp(moyenne1)

moyenne2  = mean(mean(img2(:,:,1)));
disp('la moyenne de  image 2 est :  ')
disp(moyenne2 )


moyenne3 = mean(mean(img3(:,:,1)));
disp('la moyenne   de image 3 est :  ')
disp(moyenne3)


