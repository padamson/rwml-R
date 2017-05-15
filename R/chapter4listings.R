## @knitr listing4.3
# Returns the false-positive and true-positive rates at nPoints thresholds for 
# the given true and predicted labels
# trueLabels: 0=FALSE; 1=TRUE
rocCurve <- function(trueLabels, predictedProbs, nPoints=100, posClass=1){
  # Allocates the threshold and ROC lists
  thr <- seq(0,1,length=nPoints)
  tpr <- numeric(nPoints)
  fpr <- numeric(nPoints)
  
  # Precalculates values for the positive and negative cases, used in the loop
  pos <- trueLabels == posClass
  neg <- !pos 
  nPos <- sum(pos, na.rm=TRUE)
  nNeg <- sum(neg, na.rm=TRUE)
  
  # For each threshold, calculates the rate of true and false positives
  for (i in 2:length(thr)) {
    t <- thr[i]
    meetOrExceedThreshold <- predictedProbs >= t
    tpr[i] <-  sum((meetOrExceedThreshold & pos), na.rm=TRUE) / nPos
    fpr[i] <-  sum((meetOrExceedThreshold & neg), na.rm=TRUE) / nNeg
  }
  
  # Create data frame without duplicated fpr's to return
  duplicatedFPRs <- duplicated(fpr)
  df <- data.frame(fpr=fpr[!duplicatedFPRs],tpr=tpr[!duplicatedFPRs],thr=thr[!duplicatedFPRs])
  
  return(df)
}

## @knitr listing4.4
auc <- function(trueLabels, predictedProbs, nPoints=100, posClass=1){
  auc <- 0
  df <- rocCurve(trueLabels = trueLabels,
                 predictedProbs = predictedProbs,
                 nPoints = nPoints,
                 posClass = posClass)
  
  idx <- 3:length(df$fpr)
  auc <- as.double( 
    (df$fpr[idx-1] - df$fpr[idx]) %*% (df$tpr[idx] + df$tpr[idx-1]) ) / 2.0 
  
  return(auc)
}
