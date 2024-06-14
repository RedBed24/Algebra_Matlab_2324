% Incremental practice for Algebra & Discrete Mathematics
% 2023-24
% 
% Name of the student: George Felician Soldubanu
% Milestone 2
% Briefly describe the steps taken to address this milestone:
% 
% 1. Obtener latitud y longitud de todas las ciudades a la vez
% 2. Obtener las distancias entre todas las ciudades a la vez

latitude, longitude = toRadians(ciudadesESP.lat, ciudadesESP.lng);

% Distancias

d_ij = earthDistances(latitude, longitude);
