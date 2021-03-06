predict.BANOVA.Normal <-
function(object, newdata = NULL,...){
  if(object$single_level){
    sol <- predict.means(object$samples_l1_param, object$data, object$dMatrice$X, object$dMatrice$Z_full, 
                         mf1 = object$mf1, mf2 = object$mf2, newdata, model = 'NormalNormal')
  }else{
    sol <- predict.means(object$samples_l2_param, object$data, object$dMatrice$X, object$dMatrice$Z_full, 
                         mf1 = object$mf1, mf2 = object$mf2, newdata, model = 'NormalNormal')
  }
  return(sol)
}
