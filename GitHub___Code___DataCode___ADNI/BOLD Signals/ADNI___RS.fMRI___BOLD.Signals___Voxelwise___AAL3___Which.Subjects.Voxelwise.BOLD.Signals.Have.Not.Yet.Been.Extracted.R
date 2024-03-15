#===============================================================================
# which Subjects' Voxelwise BOLD Signals have not yet been extracted
#===============================================================================
Clipboard_to_path()
path_Lists = c("F:/MNI_EPI_AAL3___SIEMENS",
               "E:/ADNI/ADNI_RS.fMRI___SB/AutoMask___O/MNI_EPI_AAL3___SIEMENS",
               "E:/ADNI/ADNI_RS.fMRI___SB/AutoMask___O/MNI_EPI_AAL3___Philips",
               "E:/ADNI/ADNI_RS.fMRI___SB/AutoMask___O/MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS")
path_Extracted.Results =  "F:/Extracted_Results/Voxelwise_BOLD_Signals"
path_Repreprocess = RS.fMRI_5_Voxelwise.Signals___Sub.List.Not.Yet.Extracted(path_Extracted.Results, path_Lists)
length(path_Repreprocess)
