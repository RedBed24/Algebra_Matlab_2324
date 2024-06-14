% Incremental practice for Algebra & Discrete Mathematics
% 2023-24
% 
% Name of the student: George Felician Soldubanu
% milestone 3
% Briefly describe the steps taken to address this milestone:

c = insertionAlgorithm(d_ij, 1, length(d_ij));

display("Ciudad: " + ciudadesESP.city(c));

% geoplot mostrar ruta
geoplot(ciudadesESP.lat(c), ciudadesESP.lng(c));

display("Kilómetros: " + cost(c, d_ij));
