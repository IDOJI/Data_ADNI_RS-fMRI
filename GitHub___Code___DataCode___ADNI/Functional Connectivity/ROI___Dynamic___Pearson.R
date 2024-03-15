##############################################################################################
# 0. Loading functions
##############################################################################################
# rm(list=ls())
#=============================================================================================
# Mac
#=============================================================================================
# path_OS = "/Users/Ido/"
# path_External.Drive = "/Volumes/Seagate/"
#============================================================================================
# Windows
#============================================================================================
path_OS = "C:/Users/lleii/"
#============================================================================================
require(tidyverse)
require(dplyr)
list.files(paste0(path_OS, "Dropbox/Github/Rpkgs/ADNIprep/R"), full.names = T) %>% walk(source)
list.files(paste0(path_OS, "Dropbox/Github/Rpkgs/StatsR/R"), full.names = T) %>% walk(source)
list.files(paste0(path_OS, "Dropbox/Github/Rpkgs/refineR/R"), full.names = T) %>% walk(source)
#=============================================================================================





Clipboard_to_path()
#===============================================================================
Pipeline = "FunImgARCWSF"
#===============================================================================
window.size = 3:20
Atlas = "AAL3"
method = c("Pearson", "Spearman", "FisherZ")
path_BOLD.Signals = paste0("D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___BOLD.Signals/ROI___", Atlas ,"___", Pipeline,"___Raw")
path_Export = "D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___Functional.Connectivity"
Results = sapply(window.size, function(y, ...){
  sapply(method, function(x,...){
    RS.fMRI_5_Functional.Connectivity___Dynamic(path_BOLD.Signals = path_BOLD.Signals, Voxelwise = F, path_Export = path_Export, brain.region.by.row = F, window.size = y, method = x, Atlas=Atlas)  
  })
})








#===============================================================================
Pipeline = "FunImgARglobalCWSF"
#===============================================================================
window.size = 3:20
Atlas = "AAL3"
method = c("Pearson", "Spearman", "FisherZ")
path_BOLD.Signals = paste0("D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___BOLD.Signals/ROI___", Atlas ,"___", Pipeline,"___Raw")
path_Export = "D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___Functional.Connectivity"
Results = sapply(window.size, function(y, ...){
  sapply(method, function(x,...){
    RS.fMRI_5_Functional.Connectivity___Dynamic(path_BOLD.Signals = path_BOLD.Signals, Voxelwise = F, path_Export = path_Export, brain.region.by.row = F, window.size = y, method = x, Atlas=Atlas)  
  })
})






