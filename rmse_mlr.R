# Root mean square error for multiple linear regression
# This code acocunts for the number of predictor variables used in the model
# obs represents the observed values
# pred represents the predicted values
# n represents the total number of observations
# nparams represents the number of parameters used in predictor variables

rmse <- function(obs, pred, n, nparams){
  rmse = round(sqrt(sum((obs - pred)^2)/(n - nparams - 1)), digit=10)
  rmse.perc = round((rmse/mean(obs))*100, digit=4)
  out = c(rmse,rmse.perc)
  return(out)
}

