% Incremental practice for Algebra & Discrete Mathematics
% 2023-24
% 
% Name of the student: George Felician Soldubanu
% Milestone 2
% Briefly describe the steps taken to address this milestone:
% 
% 1. Obtener latitud y longitud de todas las ciudades a la vez
% 2. Obtener las distancias entre todas las ciudades a la vez

PI = 3.141592;

deg_x = floor(ciudadesESP.lat);
min_x = ciudadesESP.lat - deg_x;
latitude = PI * (deg_x + 5.0 / 3.0 * min_x)/180.0;

deg_y = floor(ciudadesESP.lng);
min_y = ciudadesESP.lng - deg_y;
longitude = PI * (deg_y + 5.0 / 3.0 * min_y)/180.0;

% Distancias

R = 6378.388;

q1 = cos(longitude - longitude');
q2 = cos(latitude - latitude');
q3 = cos(latitude + latitude');
d_ij = R * acos(0.5 * ((1.0 + q1) .* q2 - (1.0 - q1) .* q3));
