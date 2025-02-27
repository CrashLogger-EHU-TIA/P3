function hands_on_regresion_logistica

clear all;
clc;

load Smarket.mat;

var_names = Smarket.Properties.VariableNames;

summary(Smarket);

% plotmatrix(Smarket{:,1:end-1});

% Most values are 0.0XX -> Nothing is correlated to nothing, our model is
% going to suck balls
corr(Smarket{:,1:end-1})

% Converting the table's Up/Downs to binary -> We're building the target
% variable to estimate
Y(strcmp(Smarket.Direction, 'Up')) = 1;
Y(strcmp(Smarket.Direction, 'Down')) = 0;
Y = Y';

% We know from when we used corr that the only correlated variables are
% Year and Volume. We're going to not consider Year as our predictor.
var_sel = 2:7;

X = Smarket{:, var_sel};

% All coefficients can be 0 (final p-value >> 0.05) -> This model is hot
% garbage mamma mia 🤌👨‍🍳🚮

mdl = fitglm(X, Y, "Distribution","binomial", "VarNames",var_names([var_sel end]))

% This model works a lot like fitlm. All the functions derived from those
% models also work for these models.
% not plot(mdl)

Xtest = Smarket{:, var_sel};
yprob = predict(mdl, Xtest);
ypred(yprob>0.5) = 1;

% Matlab is dumb as fuck so ~ means !
ypred(~yprob>0.5) = 1;

% How to read this matrix:
% True Negative - False Positive
% False Negative - True Positive
C = confusionmat(Y, ypred);
confusionchart(C, {'Down (0)', 'Up(1)'})

acc = 100*(C(1,1) + C(2,2))/(length(Y));
fprintf("Accuracy = %.2f %%\n", acc)

% Now we're re-doing things with Train/Test sections of the database.
pos_train = Smarket.Year<2005;
Xtrain = Smarket{pos_train, var_sel};
Ytrain = Y(pos_train);

pos_test = Smarket.Year>2004;
Xtest = Smarket{pos_test, var_sel};
Ytest = Y(pos_test);

mdl_trained = fitglm(Xtrain, Ytrain, "Distribution","binomial","VarNames",var_names([var_sel end]))

% We do the same accuracy thing again.
yprob_trained = predict(mdl_trained, Xtest);
ypred_trained(yprob_trained>0.5)=1;
ypred_trained(~yprob_trained>0.5)=0;

% How to read this matrix:
% True Negative - False Positive
% False Negative - True Positive
C_trained = confusionmat(Ytest, ypred_trained);
confusionchart(C_trained, {'Down (0)', 'Up(1)'});

acc_trained = 100*(C_trained(1,1) + C_trained(2,2))/(length(Ytest));
fprintf("Accuracy = %.2f %%\n", acc_trained)

% Now we're re-doing things with Train/Test sections of the database AND
% picking predictors instead of dumping all of them in
var_sel = 2:3;

pos_clean = Smarket.Year<2005;
Xclean = Smarket{pos_clean, var_sel};
Yclean = Y(pos_clean);

pos_test = Smarket.Year>2004;
Xtest = Smarket{pos_test, var_sel};
Ytest = Y(pos_test);

mdl_cleaned = fitglm(Xclean, Yclean, "Distribution","binomial","VarNames",var_names([var_sel end]))

% We do the same accuracy thing again.
yprob_cleaned = predict(mdl_cleaned, Xtest);
ypred_cleaned(yprob_cleaned>0.5)=1;
ypred_cleaned(~yprob_cleaned>0.5)=0;

% How to read this matrix:
% True Negative - False Positive
% False Negative - True Positive
C_cleaned = confusionmat(Ytest, ypred_cleaned);
confusionchart(C_cleaned, {'Down (0)', 'Up(1)'})

acc_cleaned = 100*(C_cleaned(1,1) + C_cleaned(2,2))/(length(Ytest));
fprintf("Accuracy = %.2f %%\n", acc_cleaned)

% Positive predictive value
PPV = 100* C_cleaned(2,2) / (C_cleaned(2,2) +C_cleaned(1,2));
fprintf("PPV = %.2f, %%\n", PPV);

% Negative predictive value
NPV = 100* C_cleaned(1,1) / (C_cleaned(2,1) +C_cleaned(1,1));
fprintf("NPV = %.2f, %%\n", NPV);

end