#' Transpose a data.frame preserving names
#'
#'Takes in a data.frame and returns it transposed, with the original row names as column names and the original column names as row names.
#'
#' @param df data.frame
#'
#' @return data.frame
#' @export
#'
#' @examples
#' tpose(mtcars[1:5, 1:5])
tpose <- function(df){
  t_df <- data.table::transpose(df)
  colnames(t_df) <- rownames(df)
  rownames(t_df) <- colnames(df)
  return(t_df)
}
