function [c] = studentAlgorithm(d, v, n)

c = zeros(1, n + 1);
c(1) = v;

rest = find(1:n ~= v);

for i = 1:n - 1
	% obtenemos el nodo mas cercano
	% hacemos el modulo porque al encontrar en una matriz se nos
	% devuelve un indice mayor que n
    min_dist_idx = mod(find(d == min(d(c(i), rest))), n);
	% al hacer el modulo, podemos obtener 0, si era el ultimo nodo
	% como se usan indices iniciando en 1 dara fallo, lo cambiamos
	min_dist_idx(min_dist_idx == 0) = n;

	% como se devuelven dos indices, nos quedamos con aquel
	% que no corresponde al anterior
	v = min_dist_idx(min_dist_idx ~= c(i));

    rest = rest(rest ~= v);

    c(i + 1) = v;
end

% cerramos el ciclo
c(end) = c(1);

end