matrice  =  [255 255 255 0 0 0 0 0 ;
             36 255 100 100 36 36 36 36 ;
             73 255 100 73 100 73 73 73 ;
             109 255 100 100 100 100 100 109 ;
             146 146 100 146 100 146 146 146 ;
             182 182 100 182 100 100 100 182 ;
             218 218 218 218 100 218 218 218 ;
             255 255 255 255 100 100 100 255 ]
 figure('name','image original ')
imagesc(matrice)     
colormap('jet')      


  matrice1= matrice -128 
 figure('name','image-128')
subplot(1,2,1);
imagesc(matrice)

colormap('jet')
subplot(1,2,2);
imagesc(matrice1)
colormap('jet')

  
matrice_dct = dct2(matrice1)  
matrice_dct 
figure('name','image _ dct ')
subplot(1,2,1);
imagesc(matrice1)

colormap('jet')
subplot(1,2,2);
imagesc(matrice_dct)
colormap('jet')
  
  %%%%%%%%%%   etape 2
  matrice_Quantification=zeros(8,8)
  %%%%%%%%%%%%%%%%%%%%%%%%%%  la creation de la matrice  de quantification 
  n=8
  for ligne = 1:n
    for colonne = 1:n
        matrice_Quantification(ligne,colonne) = (1+5*(1+(ligne-1) +( colonne-1)));
    end
  end

  
  matrice_Quantification
  for ligne = 1:n
    for colonne = 1:n 
                final_matrice(ligne,colonne)= (matrice_dct(ligne,colonne) / matrice_Quantification(ligne,colonne));
    end
  end 
  

 final_matrice
figure('name','image quantifie ')
subplot(1,2,1);
imagesc(matrice_dct)

colormap('jet')
subplot(1,2,2);
imagesc(final_matrice)
colormap('jet')
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%
 compresse =[	
    final_matrice(1,1) final_matrice(1,2) final_matrice(2,1) final_matrice(3,1) final_matrice(2,2) ...
	final_matrice(1,3) final_matrice(1,4) final_matrice(2,3) final_matrice(3,2) final_matrice(4,1) ...
	final_matrice(5,1) final_matrice(4,2) final_matrice(3,3) final_matrice(2,4) final_matrice(1,5) ...
	final_matrice(1,6) final_matrice(2,5) final_matrice(3,4) final_matrice(4,3) final_matrice(5,2) ...
	final_matrice(6,1) final_matrice(7,1) final_matrice(6,2) final_matrice(5,3) final_matrice(4,4) ...
	final_matrice(3,5) final_matrice(2,6) final_matrice(1,7) final_matrice(1,8) final_matrice(2,7) ...
	final_matrice(3,6) final_matrice(4,5) final_matrice(5,4) final_matrice(6,3) final_matrice(7,2) ...
	final_matrice(8,1) final_matrice(8,2) final_matrice(7,3) final_matrice(6,4) final_matrice(5,5) ...
	final_matrice(4,6) final_matrice(3,7) final_matrice(2,8) final_matrice(3,8) final_matrice(4,7) ...
	final_matrice(5,6) final_matrice(6,5) final_matrice(7,4) final_matrice(8,3) final_matrice(8,4) ...
	final_matrice(7,5) final_matrice(6,6) final_matrice(5,7) final_matrice(4,8) final_matrice(5,8) ...
	final_matrice(6,7) final_matrice(7,6) final_matrice(8,5) final_matrice(8,6) final_matrice(7,7) ...
	final_matrice(6,8) final_matrice(7,8) final_matrice(8,7) final_matrice(8,8)             ] ;


 %%%%%%%%%%%%%%  codage statistique ( Rle ) 
 
image_final=rle(compresse)
image_final= int16(image_final)
figure('name','image compresse ')
subplot(1,2,1);
imagesc(matrice)

colormap('jet')
subplot(1,2,2);
imagesc(image_final)
colormap('jet')
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% decompression JPEG 

%%%%%%%%%%% etape decodage statistique 
matrice_decodage_stati = [ 8 23 8 -5 -2 -2 -1 -2;
                           -29 9 0 1 -4 -2 -1 1;
                             4 8 2 -2 0 0 1 0;
                           -1 0 1 1 0 1 1 0;
                           0 2 1 0 0 0 0 0;
                           2 0 0 0 -1 0 0 0;
                           0 1 0 0 0 0 0 0;
                           1 0 0 0 0 0 0 0      ]
figure('Name','decodage statistique ');
imagesc(matrice_decodage_stati)
colormap('jet')                 
                       
                       


    
%%%%%%%%%%%%%%%%%% dequantofication 


n=8
  for ligne = 1:n
    for colonne = 1:n
        image_dequantifie (ligne,colonne) = matrice_decodage_stati(ligne,colonne)* matrice_Quantification(ligne,colonne);
    end
  end


figure('Name','image quantifie  ');
subplot(1,2,1);
imagesc(matrice_decodage_stati)

colormap('jet')
subplot(1,2,2);
imagesc(image_dequantifie)
colormap('jet')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DCT inverse 

dct_inverse=idct2(image_dequantifie )

image_decompresse= int16(dct_inverse + 128)
for ligne = 1:n
    for colonne = 1:n
        if (image_decompresse(ligne,colonne)< 0 ) 
            image_decompresse(ligne,colonne) = 0
        elseif (image_decompresse(ligne,colonne)  > 255 )   
            image_decompresse(ligne,colonne) = 255
        end 
    end
  end


figure('Name','image decompresse  ');
subplot(1,2,1);
imagesc(matrice)

colormap('jet')
subplot(1,2,2);
imagesc(image_decompresse)
colormap('jet')













































  
  