function Template_T3_E7
% Este script contiene la resolución del ejercicio aplicado 7 del Tema 3
% de la asignatura 'Técnicas de Inteligencia Artificial'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Este ejercicio está relacionado con el uso de la base de datos Auto 
% que es parecida a Smarket, pero contiene 1089 retornos semanales de 21 
% años, desde principios de 1990 hasta el final de 2010.

% Cargamos base de datos


disp('%%%%%%%%%%%%%%%%% EJERCICIO 7 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
fprintf('\n\n')


% Remover valores NaN


% Scatters de las variables cuantitativas (todas menos Direction)


% Medimos correlación entre variables cuantitativas (todas menos Direction)



disp('%%%%%%%%%%%%%%%%% Apartado 1 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 1 - Crear una variable binaria, mpg01, que contenga
% un 1 si mpg es superior al valor mediano, y un 0 si mpg es menor que la
% mediana.



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 2 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 2 - Utiliza scatterplots y boxplots  para analizar la asociación
% entre mpg01 y las otras características. ¿Qué predictores parecen
% ser más útiles a la hora de predecir mpg01?



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 3 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 3 -Divide los datos en conjunto de entrenamiento (70%) y de 
% test (30%). Para cada valor posible de la variable year cuantifica el 
% número de coches diferentes que hay y asigna en orden de aparición el 
% 70% a entrenamiento y el resto a test. 



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 4 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 4 - Utiliza el ALD en los datos de entrenamiento para predecir 
% mpg01 usando las variables que parecían estar más asociadas con 
% mpg01 en el apartado 2. ¿Cuál es el error de test del modelo?



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 5 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 5 - Utiliza el ACD en los datos de entrenamiento para predecir 
% mpg01 usando las variables que parecían estar más asociadas con 
% mpg01 en el apartado 2. ¿Cuál es el error de test del modelo?



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 6 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 6 - Utiliza la regresión logística en los datos de entrenamiento 
% para predecir mpg01 usando las variables que parecían estar más asociadas con 
% mpg01 en el apartado 2. ¿Cuál es el error de test del modelo?



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 7 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 7 - Utiliza KNN en los datos de entrenamiento, con diferentes 
% valores de K, para predecir mpg01 usando las variables que parecían 
% estar más asociadas con mpg01 en el apartado 2. ¿Cuál es el error de test
% del modelo? ¿Qué valor de K parece obtener mejores resultados en test?



