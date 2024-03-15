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




################################################################################
# Extracting Voxelwise BOLD signals
################################################################################
#===============================================================================
# Common options
#===============================================================================
Clipboard_to_path()
### Common Options
result.folder.name = "FunImgARglobalCWSF"
Atlas = "AAL3"
Standardization.Method = "Z.standardization"
MNI = TRUE
path_save = "D:/Data___Backup/Papers___Data/Papers___Data___ADNI___RS.fMRI___BOLD.Signals___Voxelwise___AAL3/Data___FunImgARglobalCWSF"




# Clipboard_to_path()
# GE.MEDICAL.SYSTEMS ===========================================================
Manu = "GE"
Manu = "Philips_1"
Manu = "Philips_2"
Manu = "SIEMENS_1"

# Removing FC-related files ----------------------------------------------------
path_save = "D:/Data___Backup/Papers___Data/Papers___Data___ADNI___RS.fMRI___BOLD.Signals___Voxelwise___AAL3/Data___FunImgARglobalCWSF"
path_Sub.Folders = read.csv(paste0(path_save, "/Error_Path_", Manu,".csv")) %>% select(x) %>% unlist %>% unname
cat(path_Sub.Folders, sep ="\n")
RS.fMRI_5_Voxelwise.Signals___Error.Handling___Remove.FC.Related.Files(path_Sub.Folders, result.folder.name)
# Extract Voxelwise signals ----------------------------------------------------\
path_save = "D:/test"
path_Sub.Folders_2 = sapply(path_Sub.Folders, function(x, ...){
  RS.fMRI_5_Voxelwise.Signals(path_Sub.Single =  x, 
                              result.folder.name = result.folder.name, 
                              Atlas = Atlas, 
                              Standardization.Method = Standardization.Method, 
                              path_save = path_save, 
                              Include.Raw = T)
  
}) %>% unlist















