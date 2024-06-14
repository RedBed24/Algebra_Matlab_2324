function [c] = insertionAlgorithm(d,v,n)
c = [v v];

for i = 1:n - 1

    % obtenemos v_i de forma aleatoria, asegurando que no esté ya contenido en c
    v = randi([1 n]);
    % mientras haya alguno en c que sea igual que v_i
    while any(find(c == v))
        % obtenemos otro aleatorio
        v = randi([1 n]);
    end

    k = 1;
    mini = k;
    min_val = d(c(k), v) + d(v, c(k+1));
    for k = 2:i
        val = d(c(k), v) + d(v, c(k+1));
        if val < min_val
            mini = k;
            min_val = val;
        end
    end

    c = [c(1:k), v, c(k+1:length(c))];

end

end

