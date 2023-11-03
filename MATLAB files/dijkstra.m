function [ nombre, liste ] = dijkstra(A,s,t)
taille = size(A);
V = taille(1);
D = Inf*ones(V,1);
D(s) = 0;
P = zeros(V,1);
for j=1:1:V
    if A(s,j)~=0
        D(j) = A(s,j);
        P(j) = s;
    end
end
L = D;
while L(t)~=0
    mini = Inf;
    indice_m = 0;
    for k=1:1:V
        if (L(k)<=mini) && (L(k)>0)
            mini = L(k);
            indice_m = k;
        end
    end
    for j=1:V
        if A(indice_m,j)~=0
            if D(j) > D(indice_m) + A(indice_m,j)
                D(j) = D(indice_m) + A(indice_m,j);
                L(j)=D(j);
                P(j) = indice_m;
            end
        end
    end
    L(indice_m) = 0;
end
indice = t;
chemin = [t]
while indice ~= s
    indice = P(indice);
    chemin = [indice chemin];
end

liste = D(t);
nombre = chemin;