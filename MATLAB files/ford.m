function nombre = ford(A,s,t)
taille = size(A);
F = zeros(taille);
V = taille(1);
marques = zeros(V,1);
marques(s) = 1;
pred = Inf*ones(V,1);
booleen = 1;
while booleen == 1
    traiter = [s];
    t_traiter = size(traiter);
    t_traiter = t_traiter(2);
    while t_traiter>0 && marques(t) == 0
        for j=1:V
            if A(traiter(1),j) > F(traiter(1),j) && marques(j) == 0
                marques(j) = 1;
                traiter = [traiter j];
                pred(j) = traiter(1);
            end
            if A(j,traiter(1)) > 0 && marques(traiter(1)) ~= 0 && marques(j) == 0
                marques(j) = -1;
                traiter = [traiter j];
                pred(j) = traiter(1);
            end
        end
        traiter(1) = [];
        t_traiter = size(traiter);
        t_traiter = t_traiter(2);
    end
    if marques(t) ~= 0
        u = t;
        f_min1 = Inf;
        f_min2 = Inf;
        while u ~= s
            if marques(u) == 1 && A(pred(u),u)-F(pred(u),u) < f_min1
                f_min1 = A(pred(u),u)-F(pred(u),u);
            elseif marques(u) == -1 && F(pred(u),u) < f_min2
                f_min2 = F(pred(u),u);
            end
            u = pred(u);
        end
        f_min = min(f_min1,f_min2);
        u = t;
        while u ~= s
            F(pred(u),u) = f_min + F(pred(u),u);
            u = pred(u);
        end
        marques = zeros(V,1);
        marques(s) = 1;
    else
        booleen = 0;
    end
end
nombre = 0;
for j=1:V
    nombre = nombre + F(1,j);
end