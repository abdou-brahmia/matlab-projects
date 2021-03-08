disp(' The IRIS matrix :') % La matrice IRIS 
IRIS =[
   5.1 3.5 1.4 0.2;   4.9 3.0 1.4 0.2;   4.7 3.2 1.3 0.2;   4.6 3.1 1.5 0.2;
   5.0 3.6 1.4 0.2;   5.4 3.9 1.7 0.4;   4.6 3.4 1.4 0.3;   5.0 3.4 1.5 0.2;
   4.4 2.9 1.4 0.2;   4.9 3.1 1.5 0.1;   5.4 3.7 1.5 0.2;   4.8 3.4 1.6 0.2;
   4.8 3.0 1.4 0.1;   4.3 3.0 1.1 0.1;   5.8 4.0 1.2 0.2;   5.7 4.4 1.5 0.4;
   5.4 3.9 1.3 0.4;   5.1 3.5 1.4 0.3;   5.7 3.8 1.7 0.3;   5.1 3.8 1.5 0.3;
   5.4 3.4 1.7 0.2;   5.1 3.7 1.5 0.4;   4.6 3.6 1.0 0.2;   5.1 3.3 1.7 0.5;
   4.8 3.4 1.9 0.2;   5.0 3.0 1.6 0.2;   5.0 3.4 1.6 0.4;   5.2 3.5 1.5 0.2;
   5.2 3.4 1.4 0.2;   4.7 3.2 1.6 0.2;   4.8 3.1 1.6 0.2;   5.4 3.4 1.5 0.4;
   5.2 4.1 1.5 0.1;   5.5 4.2 1.4 0.2;   4.9 3.1 1.5 0.2;   5.0 3.2 1.2 0.2;
   5.5 3.5 1.3 0.2;   4.9 3.6 1.4 0.1;   4.4 3.0 1.3 0.2;   5.1 3.4 1.5 0.2;
   5.0 3.5 1.3 0.3;   4.5 2.3 1.3 0.3;   4.4 3.2 1.3 0.2;   5.0 3.5 1.6 0.6;
   5.1 3.8 1.9 0.4;   4.8 3.0 1.4 0.3;   5.1 3.8 1.6 0.2;   4.6 3.2 1.4 0.2;
   5.3 3.7 1.5 0.2;   5.0 3.3 1.4 0.2;   7.0 3.2 4.7 1.4;   6.4 3.2 4.5 1.5;
   6.9 3.1 4.9 1.5;   5.5 2.3 4.0 1.3;   6.5 2.8 4.6 1.5;   5.7 2.8 4.5 1.3;
   6.3 3.3 4.7 1.6;   4.9 2.4 3.3 1.0;   6.6 2.9 4.6 1.3;   5.2 2.7 3.9 1.4;
   5.0 2.0 3.5 1.0;   5.9 3.0 4.2 1.5;   6.0 2.2 4.0 1.0;   6.1 2.9 4.7 1.4;
   5.6 2.9 3.6 1.3;   6.7 3.1 4.4 1.4;   5.6 3.0 4.5 1.5;   5.8 2.7 4.1 1.0;
   6.2 2.2 4.5 1.5;   5.6 2.5 3.9 1.1;   5.9 3.2 4.8 1.8;   6.1 2.8 4.0 1.3;
   6.3 2.5 4.9 1.5;   6.1 2.8 4.7 1.2;   6.4 2.9 4.3 1.3;   6.6 3.0 4.4 1.4;
   6.8 2.8 4.8 1.4;   6.7 3.0 5.0 1.7;   6.0 2.9 4.5 1.5;   5.7 2.6 3.5 1.0;
   5.5 2.4 3.8 1.1;   5.5 2.4 3.7 1.0;   5.8 2.7 3.9 1.2;   6.0 2.7 5.1 1.6;
   5.4 3.0 4.5 1.5;   6.0 3.4 4.5 1.6;   6.7 3.1 4.7 1.5;   6.3 2.3 4.4 1.3;
   5.6 3.0 4.1 1.3;   5.5 2.5 4.0 1.3;   5.5 2.6 4.4 1.2;   6.1 3.0 4.6 1.4;
   5.8 2.6 4.0 1.2;   5.0 2.3 3.3 1.0;   5.6 2.7 4.2 1.3;   5.7 3.0 4.2 1.2;
   5.7 2.9 4.2 1.3;   6.2 2.9 4.3 1.3;   5.1 2.5 3.0 1.1;   5.7 2.8 4.1 1.3;
   6.3 3.3 6.0 2.5;   5.8 2.7 5.1 1.9;   7.1 3.0 5.9 2.1;   6.3 2.9 5.6 1.8;
   6.5 3.0 5.8 2.2;   7.6 3.0 6.6 2.1;   4.9 2.5 4.5 1.7;   7.3 2.9 6.3 1.8;
   6.7 2.5 5.8 1.8;   7.2 3.6 6.1 2.5;   6.5 3.2 5.1 2.0;   6.4 2.7 5.3 1.9;
   6.8 3.0 5.5 2.1;   5.7 2.5 5.0 2.0;   5.8 2.8 5.1 2.4;   6.4 3.2 5.3 2.3;
   6.5 3.0 5.5 1.8;   7.7 3.8 6.7 2.2;   7.7 2.6 6.9 2.3;   6.0 2.2 5.0 1.5;
   6.9 3.2 5.7 2.3;   5.6 2.8 4.9 2.0;   7.7 2.8 6.7 2.0;   6.3 2.7 4.9 1.8;
   6.7 3.3 5.7 2.1;   7.2 3.2 6.0 1.8;   6.2 2.8 4.8 1.8;   6.1 3.0 4.9 1.8;
   6.4 2.8 5.6 2.1;   7.2 3.0 5.8 1.6;   7.4 2.8 6.1 1.9;   7.9 3.8 6.4 2.0;
   6.4 2.8 5.6 2.2;   6.3 2.8 5.1 1.5;   6.1 2.6 5.6 1.4;   7.7 3.0 6.1 2.3;
   6.3 3.4 5.6 2.4;   6.4 3.1 5.5 1.8;   6.0 3.0 4.8 1.8;   6.9 3.1 5.4 2.1;
   6.7 3.1 5.6 2.4;   6.9 3.1 5.1 2.3;   5.8 2.7 5.1 1.9;   6.8 3.2 5.9 2.3;
   6.7 3.3 5.7 2.5;   6.7 3.0 5.2 2.3;   6.3 2.5 5.0 1.9;   6.5 3.0 5.2 2.0;
   6.2 3.4 5.4 2.3;   5.9 3.0 5.1 1.8]

N = 150

disp(' The mean of each column : ') % La moyenne de chaque colonne
moyenne= sum(IRIS)/N

for j=1:4
    Xc(:,j)= IRIS(:,j)-moyenne(j)
end
disp(' The centered matrix : ') % La matrice centrée
Xc
for j=1:4
    Xc(:,j)= IRIS(:,j)-moyenne(j);
end
disp(' The centered matrix : ') % La matrice centrée
Xc


for j=1:4
    jj(j)= [sqrt(sum(Xc(:,j).^2)/N)];
end
disp (' Lambda :') % Lambda
jj

disp (' The reduced centered matrix :') % La matrice centrée réduite
Y=[ (Xc(:,1)/jj(1)) (Xc(:,2)/jj(2)) (Xc(:,3)/jj(3)) (Xc(:,4)/jj(4))]

disp (' The normalized matrix :') % La matrice normalisée
Z=Y/sqrt(N)

disp(' The correlation matrix :') % La matrice de corrélation
R=(Z'*Z)
  
[vecteur,valeur]=eigs(R);
disp('The vectors and the eigen values :') % Les vecteurs et les valeurs propres

Vp=sort((eig(R).'),'descend')
disp('Vector of eigen values: ') % Vecteur des valeurs propres
Vp

disp('the coordinates in the factorial plane : ') %les coordonnées dans le plan factoriel
Coord=Z*vecteur

for i=1:4
    for j=1:4      
       L(j,i)=(sqrt(valeur(i,i)))*vecteur(j,i);
    end
end

disp( 'Correlation coefficients :') %Coefficients de corrélation
disp(L)


figure(1);
    plot(Vp);
    xlabel('number of components'); % nombres des composantes
    ylabel('eigen values'); % valeurs propres
    title('Eigen value cone diagram'); % Diagramme en scène des valeurs propres
    grid on;


figure(2);
    p1=scatter(Coord(1:50,1),Coord(1:50,2),9,'r*');
    xlabel('sepal length'); % longueur de sépale
    ylabel('sepal width'); % largeur de sépale
    hold on;
    p2=scatter(Coord(51:100,1),Coord(51:100,2),9,'g*');
    xlabel('sepal length'); % longueur de sépale
    ylabel('sepal width'); % largeur de sépale
    hold on;
    p3=scatter(Coord(101:150,1),Coord(101:150,2),9,'b*');
    xlabel('sepal length'); % longueur de sépale
    ylabel('sepal width'); % largeur de sépale
    hold on;
    legend([p1(1),p2(1),p3(1)],'I.Setosa','I.Versicolor','I.Virginica');
    title('The coordinates of the individuals in the factorial plane'); % Les coordonnées des individus dans plan factoriel
    grid on;


figure(3);
    p1=compass(L(1,1),L(1,2),'blue');
    text(L(1,1),L(1,2),'\leftarrow coéf N=1 ',...
    'HorizontalAlignment','left')
    hold on;
    p2=compass(L(2,1),L(2,2),'red');
    text(L(2,1),L(2,2),'\leftarrow coéf N=2 ',...
    'HorizontalAlignment','left')
    hold on;
    p3=compass(L(3,1),L(3,2),'green');
    text(L(3,1),L(3,2),'\leftarrow coéf N=3 ',...
    'HorizontalAlignment','left')
    hold on;
    p4=compass(L(4,1),L(4,2),'black');
    text(L(4,1),L(4,2),'\leftarrow coéf N=4 ',...
    'HorizontalAlignment','left')
    title('The circle of correlation of variables by angles'); % Le cercle de corrélation des variables par les angles
    hold on;
    grid on ;
