addpath('C:\Users\ojmlc\Documents\Universidad\VII\Data Mining\Otro Bayes');

%--------------USANDO TODAS LOS FEATURES (1:11)-----------------%
%De la matriz completa usamos el 80% para el entrenamoento del algoritmo y
%el 20% para probarlo
Training = redwinequality(1:1279, :);
Testing = redwinequality(1280:1599, :);

dataTraining = Training(:, 1:11); %Aislamos los datos de entrenamiento
classTraining = Training(:, 12); %Clases de la matriz de entrenamiento 
classTesting = Testing(:, 12); %Clases de la matriz de pueba

%Objeto resultante del algoritmo de entrenamiento entrenamiento 
bayesTraining = NaiveBayes.fit(dataTraining, classTraining); 
%Matriz de predicciones del algoritmo
bayesPredict = bayesTraining.predict(Testing(:, 1:11));
results = getResults(classTesting, bayesPredict); %Resultados 

%--------------USANDO FEATURES DESTACADOS (2, 5, 10, 11)-----------------%
newMatrix = [redwinequality(:, 1), redwinequality(:, 2), redwinequality(:, 5), redwinequality(:, 10), redwinequality(:, 11)];

newTraining = newMatrix(1:1279, :);
newTesting = newMatrix(1280:1599, :);

%Objeto resultante del algoritmo de entrenamiento entrenamiento
newBayesTraining = NaiveBayes.fit(newTraining, classTraining);

%Matriz de predicciones del algoritmo
newBayesPredict = newBayesTraining.predict(newTesting);

newResults = getResults(classTesting, newBayesPredict); %Resultados 





