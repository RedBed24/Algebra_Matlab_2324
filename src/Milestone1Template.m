% Incremental practice for Algebra & Discrete Mathematics
% 2023-24
% 
% Name of the student: George Felician Soldubanu
% Milestone 1
% Briefly describe the steps taken to address this milestone:
% 
% 1. Cargamos los datos
% 2. Filtrar las ciudades (filas) por país y población, nos quedamos con todas las columnas
% 3. Cambiamos el fondo del mapa
% 4. Mostramos las cidudaes a través de su latitud y longitud

clear all
clc;

% Variable definition
data_dir = "data/"; % Relative path to the data

% Load graph data
ciudades = readtable(data_dir + "worldcities.csv");

ciudadesESP = ciudades(strcmp(ciudades.iso2, 'ES') & ciudades.population > 100000, :);

% Construct the graph
geobasemap 'topographic'
geoscatter(ciudadesESP.lat, ciudadesESP.lng, 20, "filled");

