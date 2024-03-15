################################################################################
# Moving Normalization pictures
################################################################################
Clipboard_to_path()
# Sub folders list path
path_Sub.Folders = "E:/ADNI/ADNI_RS.fMRI___SB/AutoMask___O/MNI_EPI_AAL3___Philips"
path_Sub.Folders = "E:/ADNI/ADNI_RS.fMRI___SB/AutoMask___O/MNI_EPI_AAL3___SIEMENS"
path_Sub.Folders = "E:/ADNI/ADNI_RS.fMRI___SB/AutoMask___O/MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS"
path_Sub.Folders = "F:/MNI_EPI_AAL3___SIEMENS"


# destination path
path_Normalization.Pictures = "F:/Norm"

RS.fMRI_3_Checking.Normalization.Pictures(path_Sub.Folders, 
                                          path_Normalization.Pictures)


###############################################################################
# Exclude
################################################################################
RS.fMRI_3.2_Moving.Subjects.with.Abnormal.Normalization.Pictures(path_Preprocessing.Completed, path_Normalization.Pictures_Excluding,
                                                                 
                                                                 
                                                                 
                                                                 Sub.Num_GE.MEDICAL.SYSTEMS_SB = c(109, 151, 183),
                                                                 Sub.Num_SIEMENS_SB = c(302))