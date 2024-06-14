function [distancia] = cost(C, d)

% cogemos todos los valores de c_i para i = 1:length(c)-1
% cogemos todos los valores de c_{i + 1} para i = 1:length(c)-1, que es igual que c_i, i = 2:length(c)
% obtenemos las distancias para cada par de vértices
% sólo nos interesan las parejas que son del estilo c_i y c_{i + 1}, esas parejas son las que están en las diagonales
% hacemos la suma
distancia = sum(diag(d(C(1:length(C)-1), C(2:length(C)))));

end

