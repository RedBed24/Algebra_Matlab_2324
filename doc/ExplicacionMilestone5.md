---
author: George Felician Soldubanu
title: Explicación Milestone 5
date: Extraordinaria 23/24
lang: es-ES
toc: true
---

## Explicación detallada

El algoritmo tiene un enfoque voraz.
La idea base es en cada momento, ir al punto mas cercano.
Esto es, aquel que tiene la menor distancia con el actual.

## Pasos para obtener la solución

Empezaremos con la primera ciudad dada.
El resto de ciudades posibles se guardan en un vector.

En cada iteración, buscaremos aquella ciudad del resto que tenga la menor distancia con el último nodo añadido al ciclo.
Una vez encontrada, la insertaremos al final y la eliminamos del resto de ciudades.

Al final, cerraremos el ciclo con la primera ciudad.

Para hacer la búsqueda de la ciudad más cercana buscaremos la menor distancia entre la última ciudad y el resto.
Buscaremos en qué posición de la matriz de distancias se encuentra esta.
La podemos encontrar en 2 posiciones, ya que la matriz es simétrica respecto a la diagonal.
Esta posición se nos devuelve como si la matriz fuese plana, pero nosotros queremos saber la columna/fila porque estas indican la ciudad.
Para obtenerlo, haremos el módulo con respecto al número de ciudades, el tamaño de la matriz.
Aunque esto hace que si es la última ciudad, en vez de tomar el valor n tome el 0, por lo que lo cambiaremos si fuese necesario.
Ahora, nos quedaremos con aquella ciudad que no sea en la que nos encontremos.

## Ventajas e inconvenientes

1. No está del todo optimizado ya que en todo momento buscamos obtener el mínimo de una estructura que no está ordenada.
2. Al ser un enfoque simple, es fácil de entender, pero no encuentra una solución óptima.
3. Es determinista, siempre encuentra la misma solución para las mismas entradas.

