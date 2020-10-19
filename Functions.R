#-------------------------------------------------------------------------#
#                                                                         #
#                 FUNCTIONS TO GENERATE MATHEMATICA FILES                 #
#                                                                         #
#-------------------------------------------------------------------------#

# V1 FECHA

#-------------------------------------------------------------------------#
# OBSERVACIONES:

# 1. Bla bla bla
# 2. Bla bla bla
# 3. Bla bla bla
#


# soatnuh -----------------------------------------------------------------



#-------------------------------------------------------------------------#

#' Generation of a .nb file in a specific folder with some text inside
#'
#' @param file_name name of the nb file
#' @param text_to_run text that will be printed inside the .nb file
#' @param add_print if it is needed that the extra text of Print[] is added
#' @param folder_nb_file folder where the .nb file will be saved
#'
#' @return
#' @export
#'
#' @examples
gen_nb_file <- function(file_name,text_to_run,folder_nb_file, add_print=T,add_date=T) {
  
  # text_to_run <- paste0(c("Print[\n",text_to_run,"\n]"))
  if(add_print) text_to_run <- paste0(c("Print[\n",text_to_run,"\n]"))
  if(add_date) nb_comments <- paste0(nb_comments,"\n Generated on ",format(Sys.time(), "%b %d %Y, at %X"),collapse = "")
  
  text_to_run <- paste0(c("(*\n",nb_comments,"\n*)\n\n",text_to_run,"\n"))
  file_name <- paste0(c(folder_nb_file,"/",file_name,".nb"),collapse = "")
  
  # cat(text_to_run)
  write.table(text_to_run, file=file_name, append = F, sep = "", dec = ".",row.names = F, col.names = F, quote = FALSE)
  cat("The file ",file_name," was generated\n")
}


#' Copy a file throug Terminal using R
#'
#' @param file_to_copy 
#' @param folder_nb_file 
#' @param path_of_the_copied_file 
#'
#' @return
#' @export
#'
#' @examples
copy_using_Terminal <- function(file_to_copy,folder_nb_file,path_of_the_copied_file) {
  # file_and_path <- paste(c(folder_nb_file,"/",file_to_copy))
  file_and_path <- paste(c(folder_nb_file,"/",file_to_copy),collapse = "")
  terminal_command <- paste0(c("scp ",file_and_path," ",path_of_the_copied_file),collapse = "")
  system(terminal_command)
  cat("The file ",file_and_path," was copy on the folder ",path_of_the_copied_file, "\n")
}



#' Running Terminal using R to run wls files using wolframscript command
#'
#' @param output_name 
#' @param folder_files_wls 
#' @param file_to_run 
#'
#' @return
#' @export
#'
#' @examples
rut_Terminal_using_R <- function(folder_files_wls, wls_file_to_run, output_name) {
  file_and_path <- paste(c(folder_files_wls,"/",wls_file_to_run),collapse = "")
  if(!file.exists(file_and_path)) stop(paste0(c("File ",file_and_path," does not exist!"),collapse = ""))
  terminal_command <- paste0("wolframscript -script ",file_and_path," > ",output_name)
  cat(terminal_command,"\n")
  system(terminal_command)
}







