% Incremental practice for Algebra & Discrete Mathematics
% 2023-24
% 
% Name of the student: George Felician Soldubanu
% Milestone 1
% Briefly describe the steps taken to address this milestone:
% 
% 
% 
% 

clear all
clc;

% Variable definition
data_dir = 'data/'; % Relative path to the data
ciudades = readtable('worldcities.csv');
ciudadesESP = ciudades(strcmp(ciudades.iso2, 'ES') & ciudades.population > 100000, :);
lat = ciudadesESP.lat;
long = ciudadesESP.lng;
save('ciuESPdata.mat', 'lat', 'long', 'ciudadesESP');

% Load graph data
% Complete with the corresponding code...



% Construct the graph
figure;
geobubble(ciudadesESP,'lat','lng','SizeVariable','population')




