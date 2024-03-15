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
# FC
path_FC = list.files(path_ADNI, "Connectivity", full.names = T)
path_FC_Matrix = list.files(path_FC, "___Matrix", full.names = T) %>% 
  grep("Matrix___", ., value = T, invert = T)
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








# #===============================================================================
# # Path files
# #===============================================================================
# path_FC_Matrix_Pipelines = list.files(path_FC_Matrix, full.names = T)
# Pipelines = basename_sans_ext(path_FC_Matrix_Pipelines)
# path_Files_For_Each_Pipeline = lapply(path_FC_Matrix_Pipelines, list.files, full.names=T) %>% setNames(Pipelines)
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# #===============================================================================
# # Extract RID
# #===============================================================================
# RID_1 = path_Files_For_Each_Pipeline[[1]] %>% 
#   basename_sans_ext() %>% 
#   gsub("^(RID_\\d+).*", "\\1", .)
# 
# 
# RID_2 = path_Files_For_Each_Pipeline[[2]] %>% 
#   basename_sans_ext() %>% 
#   gsub("^(RID_\\d+).*", "\\1", .)
# 
# 
# 
# 
# 
# #===============================================================================
# # Loading files 
# #===============================================================================
# FunImgARCWSF = lapply(path_Files_For_Each_Pipeline[[1]], readRDS) %>% setNames(RID_1)
# FunImgARglobalCWSF = lapply(path_Files_For_Each_Pipeline[[2]], readRDS) %>% setNames(RID_2)




#===============================================================================
# Save
#===============================================================================
# saveRDS(FunImgARCWSF, paste0(path_FC_Matrix, "/FunImgARCWSF.rds"))
# saveRDS(FunImgARglobalCWSF, paste0(path_FC_Matrix, "/FunImgARglobalCWSF.rds"))





#===============================================================================
# Check the results
#===============================================================================
# test = lapply(list.files(path_FC_Matrix, full.names=T), readRDS)







#===============================================================================
# As matrix
#===============================================================================
path_Files = path_FC_Matrix %>% list.files(., full.name = T)
Names_Files = basename_sans_ext(path_Files)
FC.list = lapply(path_Files, readRDS) %>% setNames(Names_Files)

# as matrix
FC_1 = lapply(FC.list[[1]], as.matrix)
FC_2 = lapply(FC.list[[2]], as.matrix)
FC_1[[1]] %>% View



















#-------------------------------------------------------------------------------
# Combine each Region



#===============================================================================
# Extract RID
#===============================================================================
FC_1_Files_RID = list.files(path_FC_1, full.names = F) %>% substr(1,8)
FC_2_Files_RID = list.files(path_FC_2, full.names = F) %>% substr(1,8)







#===============================================================================
# Brain Regions
#===============================================================================
Brain_Regions = FC_1_Combined.list[[1]] %>% names







#===============================================================================
# Combine by ROI
#===============================================================================
Combined_FC_1.df = do.call(rbind, FC_1_Combined.list)
Combined_FC_2.df = do.call(rbind, FC_2_Combined.list)

FC_1_Combined.by.Region = lapply(seq_along(Brain_Regions), function(k){
  kth_Region.mat = matrix(Combined_FC_1.df[,k], nrow=ncol(Combined_FC_1.df), ncol=nrow(Combined_FC_1.df)/ncol(Combined_FC_1.df))  
  colnames(kth_Region.mat) = FC_1_Files_RID
  rownames(kth_Region.mat) = Brain_Regions
  return(kth_Region.mat)
}) %>% setNames(Brain_Regions)


FC_2_Combined.by.Region = lapply(seq_along(Brain_Regions), function(k){
  kth_Region.mat = matrix(Combined_FC_2.df[,k], nrow=ncol(Combined_FC_2.df), ncol=nrow(Combined_FC_2.df)/ncol(Combined_FC_2.df))  
  colnames(kth_Region.mat) = FC_2_Files_RID
  rownames(kth_Region.mat) = Brain_Regions
  return(kth_Region.mat)
}) %>% setNames(Brain_Regions)




#===============================================================================
# Exporting
#===============================================================================
# Exporting path & name
path_Export_1 = paste0(path_FC_1, "___Combined.by.Each.Region")
path_Export_2 = paste0(path_FC_2, "___Combined.by.Each.Region")

# dir
dir.create(path_Export_1, F)
dir.create(path_Export_2, F)

# Export
saveRDS(FC_1_Combined.by.Region, paste0(path_Export_1, "/FC_Combined_by_Regions.rds"))
saveRDS(FC_2_Combined.by.Region, paste0(path_Export_2, "/FC_Combined_by_Regions.rds"))












