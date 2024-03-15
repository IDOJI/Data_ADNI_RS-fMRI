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











#===============================================================================
# Checking the number of "Sub" Folders
#===============================================================================
# Clipboard_to_path()
# path_Subjects.List = "C:/Users/lleii/Dropbox/Github/Papers___Data/___Papers___Data___ADNI___RS.fMRI___Subjects.Lists/___Subjects_Lists_Exported/Final/[Final_Selected]_Subjects_list.csv"
what.folders = c("ALFF_FunImgARCWS", "ALFF_FunImgARglobalCWS",
                 "DegreeCentrality_FunImgARCWSF", "DegreeCentrality_FunImgARglobalCWSF", 
                 "fALFF_FunImgARCWS", "fALFF_FunImgARglobalCWS", 
                 "FC_FunImgARCWSF", "FC_FunImgARglobalCWSF", 
                 "ReHo_FunImgARCWSF", "ReHo_FunImgARglobalCWSF", 
                 "ROISignals_FunImgARCWSF", "ROISignals_FunImgARglobalCWSF")



#===============================================================================
# Philips
#===============================================================================
path_Sub = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips"
RS.fMRI_5_Check.Not.Calculated.Results(path_Sub, what.folders)



path_Sub = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_X___MNI_EPI_AAL3___Philips"
RS.fMRI_5_Check.Not.Calculated.Results(path_Sub, what.folders)





#===============================================================================
# SIEMENS_SB
#===============================================================================
path_Sub = "F:/AutoMasks_O___MNI_EPI_AAL3___SIEMENS"
RS.fMRI_5_Check.Not.Calculated.Results(path_Sub, what.folders)

path_Sub = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS"
RS.fMRI_5_Check.Not.Calculated.Results(path_Sub, what.folders)




#===============================================================================
# GE.MEDICAL
#===============================================================================
path_Sub = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS"
RS.fMRI_5_Check.Not.Calculated.Results(path_Sub, what.folders)
















#







