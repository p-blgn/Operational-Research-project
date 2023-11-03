function Graphique(centres,rayon,A,chemin)
figure();
taille = size(centres);
N = taille(1);
taille = size(A);
V = taille(1);
for i=1:N
    Cercle(rayon(i),centres(i,1),centres(i,2),i,'b');
end
for i=1:V
    for j=1:V
        if A(i,j) ~= 0
            lien(rayon(i),centres(i,1),centres(i,2),rayon(j),centres(j,1),centres(j,2),A(i,j),'b');
        end
    end
end
taille = size(chemin);
L = taille(2);
if L > 0
    Cercle(rayon(chemin(L)),centres(chemin(L),1),centres(chemin(L),2),chemin(L),'g');
    for i=1:L-1
        Cercle(rayon(chemin(i)),centres(chemin(i),1),centres(chemin(i),2),chemin(i),'g');
        lien(rayon(chemin(i)),centres(chemin(i),1),centres(chemin(i),2),rayon(chemin(i+1)),centres(chemin(i+1),1),centres(chemin(i+1),2),A(chemin(i),chemin(i+1)),'r');
    end
end