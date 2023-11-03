function [ chemin, nombre ] = bellman(A,s,t)
taille = size(A);
chemin = t;
V = taille(1);
N = nnz(A);
V1 = Inf*ones(V,1);
V2 = Inf*ones(V,1);
P = Inf*ones(V,1);
negatif = 1;
aretes = zeros(V,V);
%On crée une matrice nulle à partir de certains rangs pour la complexité%
for j=1:V
    compteur = 1;
    for i=1:V
        if A(i,j)~=0
            aretes(j,compteur) = i;
            compteur = compteur + 1;
        end
    end
end
%On initialise les couts avec max un arc%
for j=1:V
    if A(s,j) ~= 0
        V1(j) = A(s,j);
        P(j) = s;
    end
end
for k=1:V
    for j=1:V
        cout = Inf*ones(V,1);
        i = 1;
        while i <= V && aretes(j,i)~=0
            cout(aretes(j,i)) = V1(aretes(j,i)) + A(aretes(j,i),j);
            i = i+1;
        end
        indi = 1;
        mini = cout(1);
        for l=1:V
            if cout(l)<mini
                indi = l;
                mini = cout(l);
            end
        end
        if V1(j) > mini
            P(j) = indi;
            V2(j) = mini;
        else
            V2(j) = V1(j);
        end
    end
    if k == V
        if V1 == V2
            negatif = 0;
        end
    end
    V1 = V2;
end
if negatif == 0
    nombre = V1(t);
    prede = t;
    while prede ~= s
        prede = P(prede);
        chemin = [prede chemin];
    end
else
    nombre = -Inf;
end