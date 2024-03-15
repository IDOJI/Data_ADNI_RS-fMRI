#===============================================================================
# Checking Subjects Lists (To Find Not having been done subjects)
#===============================================================================

Clipboard_to_path()
# Voxelwise
path_Extracted.Results.Folder = "F:/Extracted_Results/Papers___Data/Papers___Data___ADNI___RS.fMRI___BOLD.Signals___Voxelwise___AAL3/Data___MNI__Raw"
#
path_Extracted.Results.Folder = "F:/Extracted_Results/Papers___Data/Papers___Data___ADNI___RS.fMRI___BOLD.Signals___Voxelwise___AAL3/Data___MNI__Raw"
################################################################################
path_Subjects.List = "C:/Users/lleii/Dropbox/Github/Papers___Data/___Papers___Data___ADNI___RS.fMRI___Subjects.Lists/___Subjects_Lists_Exported/Final/[Final_Selected]_Subjects_list.csv"
Band.Type = "SB"
RS.fMRI_5_Check.Results___Not.Extracted.Subjects.Lists(path_Extracted.Results.Folder, path_Subjects.List, Band.Type)




