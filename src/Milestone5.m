% Incremental practice for Algebra & Discrete Mathematics
% 2023-24
% 
% Name of the student: George Felician Soldubanu
% milestone 5
% Briefly describe the steps taken to address this milestone:

c = studentAlgorithm(d_ij, 1, length(d_ij));

display("Ciudad: " + ciudadesESP.city(c));

% geoplot mostrar ruta
geoplot(ciudadesESP.lat(c), ciudadesESP.lng(c), "black");

display("Kilómetros: " + cost(c, d_ij));
