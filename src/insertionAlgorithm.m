function [c] = insertionAlgorithm(d,v,n)
c = [v v];

rest = find(1:n ~= v);

for i = 1:n - 1

    % obtenemos un índice aleatorio para el resto de vértices
    index = randi([1 length(rest)]);
    % tomamos ese vértice
    v = rest(index);
    % lo eliminamos del resto
    rest = [rest(1:index-1), rest(index+1:length(rest))];

    % hacemos todas las sumas con el vértice seleccionado
    % w_k son los vértices de c
    sums = d(c(1:length(c)-1), v) + d(v, c(2:length(c)));
    k = find(sums == min(sums));

    c = [c(1:k), v, c(k+1:length(c))];

end

end

