function [C] = flipAlgorithm(C, Niter, d, n)

for k = 1:Niter
    % no podemos cambiar el primero ni último porque si no no sería ciclo
    % evitamos que i == j porque no hace ningún cambio
    i = randi([2, n - 1]);
    j = randi([i + 1, n]);

    Cnew = [C(1:i - 1), flip(C(i:j)), C(j + 1:length(C))];

    if cost(Cnew, d) < cost(C, d)
        C = Cnew;
    end
end

end

