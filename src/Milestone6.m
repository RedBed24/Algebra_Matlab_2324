% Incremental practice for Algebra & Discrete Mathematics
% 2023-24
% 
% Name of the student: George Felician Soldubanu
% milestone 6
% Briefly describe the steps taken to address this milestone:

for pais = ["ES" "DE" "FR" "IT"]
    ciudadesPais = ciudades(strcmp(ciudades.iso2, pais) & ciudades.population > 100000, :);
    [latitude, longitude] = toRadians(ciudadesPais.lat, ciudadesPais.lng);
    d_ij = earthDistances(latitude, longitude);

	start = cputime;
    c = insertionAlgorithm(d_ij, 1, length(d_ij));
    elapsed = cputime - start;

    cost(c, d_ij);

	start = cputime;
    c = flipAlgorithm([1:length(d_ij), 1], 10000, d_ij, length(d_ij));
    elapsed = cputime - start;

    cost(c, d_ij);
end
