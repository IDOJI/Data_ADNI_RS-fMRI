################################################################################
# Renaming Sub numbering
################################################################################
Clipboard_to_path()
path_New.Subjects.Lists = "C:/Users/lleii/Dropbox/Github/Papers___Data/___Papers___Data___ADNI___RS.fMRI___Subjects.Lists/___Subjects_Lists_Exported/Final/[Final_Selected]_Subjects_list.csv"
# Subjects.df = read.csv(path_New.Subjects.Lists)
# Subjects.df$File_Names



#===============================================================================
# GE MEDICAL SYSTEMS
#===============================================================================
path_Sub.Folders = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS"
RS.fMRI_3_Rename.Sub.Folders.by.New.Subjects.List(path_New.Subjects.Lists, 
                                                  path_Sub.Folders,
                                                  filename_col_name = "File_Names")



#===============================================================================
# Philips
#===============================================================================
path_Sub.Folders = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips"
RS.fMRI_3_Rename.Sub.Folders.by.New.Subjects.List(path_New.Subjects.Lists, 
                                                  path_Sub.Folders,
                                                  filename_col_name = "File_Names")


path_Sub.Folders = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_X___MNI_EPI_AAL3___Philips"
RS.fMRI_3_Rename.Sub.Folders.by.New.Subjects.List(path_New.Subjects.Lists, 
                                                  path_Sub.Folders,
                                                  filename_col_name = "File_Names")




#===============================================================================
# SIEMENS_SB
#===============================================================================
path_Sub.Folders = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS"
RS.fMRI_3_Rename.Sub.Folders.by.New.Subjects.List(path_New.Subjects.Lists, 
                                                  path_Sub.Folders,
                                                  filename_col_name = "File_Names")



path_Sub.Folders = "F:/AutoMasks_O___MNI_EPI_AAL3___SIEMENS"
RS.fMRI_3_Rename.Sub.Folders.by.New.Subjects.List(path_New.Subjects.Lists, 
                                                  path_Sub.Folders,
                                                  filename_col_name = "File_Names")



#===============================================================================
# SIEMENS_MB
#===============================================================================
path_Sub.Folders = "F:/ADNI/ADNI_RS.fMRI___MB/Completed___AutoMask___O"
RS.fMRI_3_Rename.Sub.Folders.by.New.Subjects.List(path_New.Subjects.Lists, 
                                                  path_Sub.Folders,
                                                  filename_col_name = "File_Names")













