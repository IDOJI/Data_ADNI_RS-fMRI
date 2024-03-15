#===============================================================================
# Check the number of timepoints
#===============================================================================
### GE
path_Sub.Folders = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS"
n_timepoints_1 = RS.fMRI_4_Check___The.Number.of.Timepoints(path_Sub.Folders, ROI_Signals_Folder = "ROISignals_FunImgARCWSF")
n_timepoints_1$n_timepoints %>% table



## Philips_1
path_Sub.Folders = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips"
n_timepoints_2 = RS.fMRI_4_Check___The.Number.of.Timepoints(path_Sub.Folders, ROI_Signals_Folder = "ROISignals_FunImgARCWSF")
n_timepoints_2$n_timepoints %>% table
n_timepoints_2$path_Sub[which(n_timepoints_2$n_timepoints==187)]
n_timepoints_2$path_Sub[which(n_timepoints_2$n_timepoints==197)]


## philips_2
path_Sub.Folders = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_X___MNI_EPI_AAL3___Philips"
n_timepoints_3 = RS.fMRI_4_Check___The.Number.of.Timepoints(path_Sub.Folders, ROI_Signals_Folder = "ROISignals_FunImgARCWSF")
n_timepoints_3$n_timepoints %>% table


## SIEMENS_1
path_Sub.Folders = "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS"
n_timepoints_4 = RS.fMRI_4_Check___The.Number.of.Timepoints(path_Sub.Folders, ROI_Signals_Folder = "ROISignals_FunImgARCWSF")
table(n_timepoints_4$n_timepoints)




## SIEMENS_2
path_Sub.Folders = "F:/AutoMasks_O___MNI_EPI_AAL3___SIEMENS"
n_timepoints_5 = RS.fMRI_4_Check___The.Number.of.Timepoints(path_Sub.Folders, ROI_Signals_Folder = "ROISignals_FunImgARCWSF")
table(n_timepoints_5$n_timepoints)

















