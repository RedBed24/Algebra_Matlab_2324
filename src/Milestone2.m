% Incremental practice for Algebra & Discrete Mathematics
% 2023-24
% 
% Name of the student: George Felician Soldubanu
% Milestone 2
% Briefly describe the steps taken to address this milestone:
% 
% 
% 
% 

clear all
clc;


% Variable definition
load('ciuESPdata.mat');

% Convertir las coordenadas a radianes
deg_to_rad = pi / 180;
lat_rad = deg_to_rad * lat;
lon_rad = deg_to_rad * long;

% Calcular la matriz de distancia entre las ciudades
R = 6378.388; % Radio de la Tierra en kilómetros

num_cities = size(ciudadesESP, 1);
distances = zeros(num_cities);

for i = 1:num_cities
    for j = 1:num_cities
        q1 = cos(lon_rad(i) - lon_rad(j));
        q2 = cos(lat_rad(i) - lat_rad(j));
        q3 = cos(lat_rad(i) + lat_rad(j));
        distances(i, j) = R * acos(0.5 * ((1.0 + q1) * q2 - (1.0 - q1) * q3));
    end
end

% Imprimir la matriz de distancia
disp('Matriz distancias:');
disp(distances);

