##############################################################################################
# Extracting ROI BOLD signals
##############################################################################################
# Clipboard_to_path()
Pipeline = "FunImgARCWSF"
Atlas = "AAL3"
path_Export = "D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___BOLD.Signals"
#===============================================================================
path_Sub_List = c("D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS", 
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips",
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS",
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_X___MNI_EPI_AAL3___Philips",
                  "F:/AutoMasks_O___MNI_EPI_AAL3___SIEMENS")
Results = sapply(path_Sub_List, function(path_Sub, ...){
  RS.fMRI_5_BOLD.Signals___ROI___Extractor(path_Sub, Pipeline, Atlas, path_Export)  
})








##############################################################################################
# Extracting ROI BOLD signals : Global
##############################################################################################
# Clipboard_to_path()
Pipeline = "FunImgARglobalCWSF"
Atlas = "AAL3"
path_Export = "D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___BOLD.Signals"
#===============================================================================
path_Sub_List = c("D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS", 
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips",
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS",
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_X___MNI_EPI_AAL3___Philips",
                  "F:/AutoMasks_O___MNI_EPI_AAL3___SIEMENS")
Results = sapply(path_Sub_List, function(path_Sub, ...){
  RS.fMRI_5_BOLD.Signals___ROI___Extractor(path_Sub, Pipeline, Atlas, path_Export)  
})




















