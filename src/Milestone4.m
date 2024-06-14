% Incremental practice for Algebra & Discrete Mathematics
% 2023-24
% 
% Name of the student: George Felician Soldubanu
% milestone 4
% Briefly describe the steps taken to address this milestone:

c = flipAlgorithm([1:length(d_ij), 1], 10000, d_ij, length(d_ij));

display("Ciudad: " + ciudadesESP.city(c));

% geoplot mostrar ruta
geoplot(ciudadesESP.lat(c), ciudadesESP.lng(c), "red");

display("Kilómetros: " + cost(c, d_ij));
