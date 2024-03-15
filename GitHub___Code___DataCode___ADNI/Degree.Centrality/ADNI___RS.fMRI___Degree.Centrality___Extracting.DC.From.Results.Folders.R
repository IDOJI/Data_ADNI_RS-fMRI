##############################################################################################
# Extracting ReHo
##############################################################################################
# Clipboard_to_path()
Pipeline = "FunImgARCWSF"
path_Export = "D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___Degree.Centrality"
#===============================================================================
path_Sub_List = c("D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS", 
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips",
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS",
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_X___MNI_EPI_AAL3___Philips",
                  "F:/AutoMasks_O___MNI_EPI_AAL3___SIEMENS")
Results = sapply(path_Sub_List, function(path_Sub, ...){
  RS.fMRI_5_DC___Extractor(path_Sub, path_Export, Pipeline) 
})








##############################################################################################
# Extracting ReHo : Global
##############################################################################################
Pipeline = "FunImgARglobalCWSF"
path_Export = "D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___Degree.Centrality"
#===============================================================================
path_Sub_List = c("D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___GE.MEDICAL.SYSTEMS", 
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips",
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS",
                  "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_X___MNI_EPI_AAL3___Philips",
                  "F:/AutoMasks_O___MNI_EPI_AAL3___SIEMENS")
Results = sapply(path_Sub_List, function(path_Sub, ...){
  RS.fMRI_5_DC___Extractor(path_Sub, path_Export, Pipeline) 
})

















