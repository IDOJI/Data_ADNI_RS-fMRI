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


#===============================================================================
Atlas = "AAL3"
Standardization.Method = "Z.standardization"
path_save = "D:/Data___Backup/Papers___Data"




#===============================================================================
# Singles subject
#===============================================================================
# Clipboard_to_path()
result.folder.name = "FunImgARCWSF"
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS/SIEMENS_SB___Sub_001___RID_0021___EPI_I957749___MT1_I957745"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single =  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips/Philips_SB___Sub_076___RID_6349___EPI_I998338___MT1_I998328"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips/Philips_SB___Sub_066___RID_6291___EPI_I989659___MT1_I989656"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_113___RID_6327___EPI_I996824___MT1_I996822/"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_166___RID_6734___EPI_I1176406___MT1_I1176404"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_021___RID_2234___EPI_I955111___MT1_I955110"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_057___RID_4919___EPI_I814319___MT1_I814318"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_001___RID_0074___EPI_I1120325___MT1_I1120324"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)

result.folder.name = "FunImgARglobalCWSF"
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS/SIEMENS_SB___Sub_001___RID_0021___EPI_I957749___MT1_I957745"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single =  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips/Philips_SB___Sub_076___RID_6349___EPI_I998338___MT1_I998328"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips/Philips_SB___Sub_066___RID_6291___EPI_I989659___MT1_I989656"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_113___RID_6327___EPI_I996824___MT1_I996822/"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_166___RID_6734___EPI_I1176406___MT1_I1176404"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_021___RID_2234___EPI_I955111___MT1_I955110"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_057___RID_4919___EPI_I814319___MT1_I814318"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)
path_Preprocessing.Single = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS/GE.MEDICAL.SYSTEMS_SB___Sub_001___RID_0074___EPI_I1120325___MT1_I1120324"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Sub.Single = path_Preprocessing.Single,  result.folder.name = result.folder.name,  Atlas = Atlas,  Standardization.Method = Standardization.Method,  path_save = path_save,  Include.Raw = T)







#===============================================================================
# GE.MEDICAL.SYSTEMS
#===============================================================================
# Clipboard_to_path()
path_Preprocessing.Completed = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS"
path_save = "F:/Data___Backup/Papers___Data/Papers___Data___ADNI___RS.fMRI___BOLD.Signals___Voxelwise___AAL3/Data___FunImgARglobalCWSF"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Preprocessing.Completed = path_Preprocessing.Completed, 
                                                 result.folder.name = result.folder.name, 
                                                 Atlas = Atlas, 
                                                 Standardization.Method = Standardization.Method, 
                                                 path_save = path_save, 
                                                 Include.Raw = T)






#===============================================================================
# Philips (AutoMasks O)
#===============================================================================
# Clipboard_to_path()
path_Preprocessing.Completed = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips"
path_save = "F:/Data___Backup/Papers___Data/Papers___Data___ADNI___RS.fMRI___BOLD.Signals___Voxelwise___AAL3/Data___FunImgARglobalCWSF"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Preprocessing.Completed = path_Preprocessing.Completed, 
                                                 result.folder.name = result.folder.name, 
                                                 Atlas = Atlas, 
                                                 Standardization.Method = Standardization.Method, 
                                                 path_save = path_save, 
                                                 Include.Raw = T)





#===============================================================================
# Philips (AutoMasks X)
#===============================================================================
path_Preprocessing.Completed = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_X___MNI_EPI_AAL3___Philips"
path_save = "F:/Data___Backup/Papers___Data/Papers___Data___ADNI___RS.fMRI___BOLD.Signals___Voxelwise___AAL3/Data___FunImgARglobalCWSF"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Preprocessing.Completed = path_Preprocessing.Completed, 
                                                 result.folder.name = result.folder.name, 
                                                 Atlas = Atlas, 
                                                 Standardization.Method = Standardization.Method, 
                                                 path_save = path_save, 
                                                 Include.Raw = T)







#===============================================================================
# SIEMENS (AutoMasks O)
#===============================================================================
path_Preprocessing.Completed = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS"
path_save = "F:/Data___Backup/Papers___Data/Papers___Data___ADNI___RS.fMRI___BOLD.Signals___Voxelwise___AAL3/Data___FunImgARglobalCWSF"
Error_path_Philips = RS.fMRI_5_BOLD.Signals___Voxelwise(path_Preprocessing.Completed = path_Preprocessing.Completed, 
                                                 result.folder.name = result.folder.name, 
                                                 Atlas = Atlas, 
                                                 Standardization.Method = Standardization.Method, 
                                                 path_save = path_save, 
                                                 Include.Raw = T)








