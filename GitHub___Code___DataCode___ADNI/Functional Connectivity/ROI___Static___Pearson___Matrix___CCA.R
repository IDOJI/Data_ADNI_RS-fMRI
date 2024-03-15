################################################################################
# Loading packages
################################################################################
# rm(list=ls())
#===============================================================================
# Mac
#===============================================================================
# path_OS = "/Users/Ido/"
#===============================================================================
# Windows
#===============================================================================
# path_OS = "C:/Users/lleii/"
#===============================================================================
install_packages = function(packages, load=TRUE) {
  # load : load the packages after installation?
  for(pkg in packages) {
    if (!require(pkg, character.only = TRUE)) {
      install.packages(pkg)
    }
    
    if(load){
      library(pkg, character.only = TRUE)
    }
  }
}
install_packages(c("tidyverse", "dplyr", "clipr", "fda", "tidyr", "stringr"))
################################################################################
# Loading My Functions
################################################################################
path_Dropbox = paste0(path_OS, "Dropbox")
path_GitHub = list.files(path_Dropbox, pattern = "Github", full.names = T)
path_Rpkgs = list.files(path_GitHub, pattern = "Rpkgs", full.names = T)
Rpkgs = c("ADNIprep", "StatsR", "refineR", "dimR")
Load = sapply(Rpkgs, function(y){
  list.files(paste0(path_Rpkgs, "/", y, "/R"), full.names = T) %>% walk(source) 
})
################################################################################
# path : Data
################################################################################
path_Data = paste0(path_Dropbox, "/Data")
#-------------------------------------------------
# ADNI
#-------------------------------------------------
path_ADNI = list.files(path_Data, full.names = T, pattern = "ADNI")
# Subjects List
path_Subjects = list.files(path_ADNI, "Subjects.Lists", full.names = TRUE) %>% 
  list.files(., full.names = TRUE) %>%
  grep("Subjects_Lists_Exported$", ., value = TRUE) %>% 
  list.files(., full.names = TRUE) %>% 
  grep("Final$", ., value = TRUE) %>% 
  list.files(., full.names = TRUE) %>% 
  grep("list.csv$", ., value  =TRUE)
# BOLD
path_BOLD = list.files(path_ADNI, "BOLD", full.names = T)
# FC
path_FC = list.files(path_ADNI, "Connectivity", full.names = T)
path_FC_Matrix = list.files(path_FC, "___Matrix", full.names = T) %>% 
  grep("Matrix___", ., value = T, invert = T)
path_FC_Matrix_Raw = path_FC_Matrix %>% grep("Pearson___", ., value=T)
path_FC_Matrix_FZ = path_FC_Matrix %>% grep("Pearson___", ., value=T, invert=T)
path_FC_Graph = list.files(path_FC, "GraphMeasures", full.names = T)
path_FC_CCA = list.files(path_FC, "_CCA", full.names = T)
# FDA
path_FD = list.files(path_ADNI, full.names = T, pattern = "Functional.Data")
path_Euclidean = list.files(path_FD, pattern = "Euclidean", full.names=TRUE)
path_FPCA = list.files(path_Euclidean, pattern = "FPCA", full.names=TRUE)
################################################################################
# path : papers
################################################################################
path_Papers = list.files(path_Data, "Papers", full.names = T)
# FDA
path_Papers_FDA = list.files(path_Papers, "Euclidean", full.names = T)
path_Papers_FDA_Data = list.files(path_Papers_FDA, "Data", full.names = T)
#===============================================================================








#===============================================================================
# Load Subjects List & Extract each RID
#===============================================================================
path_FDA_FunImgARCWSF = list.files(path_Papers_FDA_Data, "FunImgARCWSF", full.names = T)

Names_FDA = path_FDA_FunImgARCWSF %>% basename_sans_ext() %>% sub("Combiend___", "", .)

SubjectsList = lapply(path_FDA_FunImgARCWSF, readRDS) %>% setNames(Names_FDA)

RID_SubjectseList = lapply(SubjectsList, function(y){
  y$Train_X$RID
}) %>% setNames(Names_FDA)










#===============================================================================
# Load Raw FC Matrices
#===============================================================================
path_FC_Matrices = list.files(path_FC_Matrix_Raw, full.names=T)
Names_FC_Matrices = basename_sans_ext(path_FC_Matrices)
FC_Matrices = lapply(path_FC_Matrices, readRDS) %>% setNames(Names_FC_Matrices)








#===============================================================================
# Define a function to compute CCA
#===============================================================================
Compute_CCA_by_RID = function(Cov.list, RID){
  # Cov.list = FC_Matrices[[1]]
  # file.name="Test"
  # RID = RID_SubjectseList[[1]]
  
  which_RID = which(names(Cov.list) %in% RID)
  
  
  Results = DimMat___Sym___Cov___CCA(Cov.list = Cov.list[which_RID], 
                                     explained_var_prop = 0.95)
  
  Results %>% return
}






#===============================================================================
# Computing CCA for each RID group
#===============================================================================
Pipelines = c("FunImgARCWSF", "FunImgARglobalCWSF")
for(k in seq_along(Pipelines)){
  CCA.list = lapply(RID_SubjectseList, function(ith_RID){
    Compute_CCA_by_RID(Cov.list = FC_Matrices[[k]], RID = ith_RID)
  }) %>% setNames(Names_FDA)
  saveRDS(CCA.list, paste0(path_FC_CCA, "/", Pipelines[k], ".rds"))  
}










#===============================================================================
# Check the results
#===============================================================================
path_CCA_Results = list.files(path_FC_CCA, full.names = T)
Names_Files = basename_sans_ext(path_CCA_Results)
Results = lapply(path_CCA_Results, readRDS) %>% setNames(Names_Files)

for(k in seq_along(Results)){
  
  Results[[k]] = lapply(Results[[k]], function(X){
    
    X$Half_Vectorized = X$Half_Vectorized %>% as.data.frame() %>% setNames(paste0("CCA___", fit_length(1:ncol(X$Half_Vectorized), 4)))
    return(X)
  })
  
}

# Save New
saveRDS(Results[[1]], paste0(path_FC_CCA, "/", Names_Files[1], ".rds"))
saveRDS(Results[[2]], paste0(path_FC_CCA, "/", Names_Files[2], ".rds"))














