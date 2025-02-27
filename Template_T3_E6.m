function Template_T3_E6
% Este script contiene la resolución del ejercicio aplicado 6 del Tema 3
% de la asignatura 'Técnicas de Inteligencia Artificial'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Este ejercicio está relacionado con el uso de la base de datos Weekly 
% que es parecida a Smarket, pero contiene 1089 retornos semanales de 21 
% años, desde principios de 1990 hasta el final de 2010.

% Cargamos base de datos


disp('%%%%%%%%%%%%%%%%% EJERCICIO 6 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
fprintf('\n\n')


disp('%%%%%%%%%%%%%%%%% Apartado 1 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 1 - Producir resúmenes numéricos y gráficos de la base de 
% datos Weekly. ¿Existe algún patrón?


% Scatters de las variables cuantitativas (todas menos Direction)


% Medimos correlación entre variables cuantitativas (todas menos Direction)



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 2 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 2 - Utiliza toda la base de datos para ajustar un modelo de 
% regresión logística para predecir Direction en base a las cinco variables lag y 
% Volume. ¿Es alguno de los predictores estadísticamente significativo? 
% En caso afirmativo, identifícalos.



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 3 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 3 - Calcula la matriz de confusión y el porcentaje de predicciones 
% correctas. Examina la matriz de confusión y explica lo que ésta indica sobre 
% los tipos de errores que el modelo de regresión logística comete.



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 4 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 4 - Ahora ajusta un modelo de regresión logística usando como datos 
% de entrenamiento las observaciones desde 1990 hasta 2008, y utiliza Lag2 
% como único predictor. Calcula la matriz de confusión y el porcentaje de predicciones 
% correctas para los datos de test (observaciones desde 2009 a 2010).



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 5 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 5 - Ahora ajusta un modelo ALD usando como datos 
% de entrenamiento las observaciones desde 1990 hasta 2008, y utiliza Lag2 
% como único predictor. Calcula la matriz de confusión y el porcentaje de predicciones 
% correctas para los datos de test (observaciones desde 2009 a 2010).



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 6 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 6 - Ahora ajusta un modelo ACD usando como datos 
% de entrenamiento las observaciones desde 1990 hasta 2008, y utiliza Lag2 
% como único predictor. Calcula la matriz de confusión y el porcentaje de predicciones 
% correctas para los datos de test (observaciones desde 2009 a 2010).



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 7 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 7 - Ahora ajusta un modelo 1-NN usando como datos 
% de entrenamiento las observaciones desde 1990 hasta 2008, y utiliza Lag2 
% como único predictor. Calcula la matriz de confusión y el porcentaje de predicciones 
% correctas para los datos de test (observaciones desde 2009 a 2010).
rng(1);% Controlamos la semilla para la creación de números aleatorios



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 8 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 8 - ¿Cuál de los métodos parece obtener mejores resultados?
% Respuesta
% El ALD y la regresión logística presentan los mejores resultados. El 1-NN
% y QDA presentan resultados pobres. En este escenario un umbral de
% decisión de bayes lineal parece ser lo acertado.



fprintf('\n')
disp('%%%%%%%%%%%%%%%%% Apartado 9 %%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Apartado 9 - Experimenta con diferentes combinaciones de los predictores 
% (posibles transformaciones o interacciones) para cada uno de los métodos. 
% Reporta las variables, método, y la matriz de  confusión que parecen 
% obtener los mejores resultados en los datos de test. Deberías de 
% experimentar con diferentes valores de $K$ para el clasificador KNN.



% RL


% LDA


% QDA


% KNN
rng(1);


fprintf('\n PRECISIONES DE LOS MODELOS \n')
fprintf('\n RL: %4.1f%% \n',acc_RL);
fprintf('\n LDA: %4.1f%% \n',acc_LDA);
fprintf('\n QDA: %4.1f%% \n',acc_QDA);
fprintf('\n KNN: %4.1f%% \n',acc_KNN);