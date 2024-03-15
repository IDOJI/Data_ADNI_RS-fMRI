#===============================================================================
# Checking the number of "Sub" Folders
#===============================================================================
Clipboard_to_path()
path_Subjects.List = "C:/Users/lleii/Dropbox/Github/Papers___Data/___Papers___Data___ADNI___RS.fMRI___Subjects.Lists/___Subjects_Lists_Exported/Final/[Final_Selected]_Subjects_list.csv"



#===============================================================================
# Philips
#===============================================================================
path_Manufacture = c("D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___Philips", 
                     "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_X___MNI_EPI_AAL3___Philips")
Manufacturer = "Philips"
Band.Type = "SB"
RS.fMRI_5_Check.Results___Sub.Folders.Each.Manufacturer(path_Manufacture, path_Subjects.List, Manufacture, Band)



#===============================================================================
# SIEMENS_SB
#===============================================================================
path_Manufacture = c("F:/AutoMasks_O___MNI_EPI_AAL3___SIEMENS", 
                     "D:/ADNI/ADNI_RS.fMRI___SB/AutoMasks_O___MNI_EPI_AAL3___SIEMENS")
Manufacturer = "SIEMENS"
Band.Type = "SB"
RS.fMRI_5_Check.Results___Sub.Folders.Each.Manufacturer(path_Manufacture, path_Subjects.List, Manufacture, Band)










